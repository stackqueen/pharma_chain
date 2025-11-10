// src/App.jsx
import React, { useEffect, useState } from "react";
import { getContract, getProviderIfInstalled } from "./utils/blockchain";
import { ethers } from "ethers";

export default function App() {
  const [hasMetaMask, setHasMetaMask] = useState(false);
  const [connectedAccount, setConnectedAccount] = useState(null);
  const [contract, setContract] = useState(null);
  const [msg, setMsg] = useState("");

  // UI inputs
  const [page, setPage] = useState('create'); // 'create' or 'view'
  const [name, setName] = useState("");
  const [price, setPrice] = useState("");
  const [expiryDate, setExpiryDate] = useState("");
  const [manufacturingDate, setManufacturingDate] = useState("");
  const [quantity, setQuantity] = useState("");
  const [role, setRole] = useState(0);
  const [sku, setSku] = useState("");
  const [putForSalePrice, setPutForSalePrice] = useState("");
  const [fetched, setFetched] = useState(null);
  const [allItems, setAllItems] = useState([]);

  useEffect(() => {
    // initial detection
    const installed = Boolean(window.ethereum);
    setHasMetaMask(installed);

    // If injected later (rare), listen for injection event
    function handleInjection() {
      setHasMetaMask(Boolean(window.ethereum));
    }

    window.addEventListener("ethereum#initialized", handleInjection, false);
    // also fallback: check after a short timeout in case extension injects later
    setTimeout(() => setHasMetaMask(Boolean(window.ethereum)), 500);

    // listen for account / network changes if metamask exists
    if (window.ethereum && window.ethereum.on) {
      const onAccountsChanged = (accounts) => {
        setConnectedAccount(accounts && accounts[0] ? accounts[0] : null);
      };
      const onChainChanged = (_chainId) => {
        // reload to reinitialize providers (optional)
        window.location.reload();
      };

      window.ethereum.on("accountsChanged", onAccountsChanged);
      window.ethereum.on("chainChanged", onChainChanged);

      return () => {
        try {
          window.ethereum.removeListener("accountsChanged", onAccountsChanged);
          window.ethereum.removeListener("chainChanged", onChainChanged);
        } catch (e) {}
        window.removeEventListener("ethereum#initialized", handleInjection);
      };
    }

    return () => {
      window.removeEventListener("ethereum#initialized", handleInjection);
    };
  }, []);

  async function connectWallet() {
    try {
      const provider = await getProviderIfInstalled();
      if (!provider) {
        setMsg("MetaMask not installed");
        setHasMetaMask(false);
        return;
      }
      const { provider: p, signer, contract } = await getContract();
      const address = await signer.getAddress();
      setConnectedAccount(address);
      setContract(contract);
      setMsg("Connected: " + address);
      fetchAllItems(); // Fetch items on connect
    } catch (e) {
      setMsg(e.message || String(e));
    }
  }

  async function createItem() {
    if (!contract) return setMsg("Connect your wallet first");
    if (!name || !price || !expiryDate || !manufacturingDate || !quantity) {
      return setMsg("All fields are required");
    }
    const expiryTimestamp = Math.floor(new Date(expiryDate).getTime() / 1000);
    const manufacturingTimestamp = Math.floor(new Date(manufacturingDate).getTime() / 1000);
    try {
      const tx = await contract.createItem(name, ethers.parseEther(price), expiryTimestamp, manufacturingTimestamp, quantity, role);
      await tx.wait();
      setMsg("Item created successfully");
      // Clear form
      setName("");
      setPrice("");
      setExpiryDate("");
      setManufacturingDate("");
      setQuantity("");
      setRole(0);
      fetchAllItems(); // Refresh items
    } catch (e) {
      setMsg(e.message || String(e));
    }
  }

  async function fetchItem() {
    if (!contract) return setMsg("Connect your wallet first");
    try {
      const res = await contract.getItem(Number(sku));
      setFetched({
        sku: res[0].toString(),
        name: res[1],
        price: ethers.formatEther(res[2]),
        expiryDate: new Date(Number(res[3]) * 1000).toLocaleDateString(),
        manufacturingDate: new Date(Number(res[4]) * 1000).toLocaleDateString(),
        quantity: res[5].toString(),
        owner: res[6],
        status: Number(res[7]),
        role: Number(res[8])
      });
      setMsg("");
    } catch (e) {
      setMsg(e.message || String(e));
    }
  }

  async function fetchAllItems() {
    if (!contract) return;
    try {
      const total = await contract.totalItems();
      const items = [];
      for (let i = 1; i <= Number(total); i++) {
        const res = await contract.getItem(i);
        items.push({
          sku: res[0].toString(),
          name: res[1],
          price: ethers.formatEther(res[2]),
          expiryDate: new Date(Number(res[3]) * 1000).toLocaleDateString(),
          manufacturingDate: new Date(Number(res[4]) * 1000).toLocaleDateString(),
          quantity: res[5].toString(),
          owner: res[6],
          status: Number(res[7]),
          role: Number(res[8])
        });
      }
      setAllItems(items);
    } catch (e) {
      setMsg(e.message || String(e));
    }
  }

  async function putForSale() {
    if (!contract) return setMsg("Connect your wallet first");
    if (!sku || !putForSalePrice) return setMsg("SKU and price required");
    try {
      const tx = await contract.putForSale(Number(sku), ethers.parseEther(putForSalePrice));
      await tx.wait();
      setMsg("Item put for sale");
      fetchAllItems(); // Refresh
    } catch (e) {
      setMsg(e.message || String(e));
    }
  }

  async function buyItem(itemSku, itemPrice) {
    if (!contract) return setMsg("Connect your wallet first");
    try {
      const tx = await contract.buyItem(Number(itemSku), { value: ethers.parseEther(itemPrice) });
      await tx.wait();
      setMsg("Item purchased successfully");
      fetchAllItems(); // Refresh
    } catch (e) {
      setMsg(e.message || String(e));
    }
  }

  return (
    <div style={{ padding: 20, fontFamily: "sans-serif" }}>
      <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center" }}>
        <h1>Pharma Supply Chain DApp</h1>
        <div>
          {!hasMetaMask ? (
            <div style={{ color: "crimson", padding: 8, border: "1px solid #f5c6cb", background: "#fdecea" }}>
              MetaMask is not installed. Please install MetaMask to continue.
            </div>
          ) : !connectedAccount ? (
            <button onClick={connectWallet} style={{ padding: "8px 12px", background: "#2b9", color: "white", borderRadius: 6 }}>
              Connect MetaMask
            </button>
          ) : (
            <div>Connected: {connectedAccount}</div>
          )}
        </div>
      </div>

      <hr />

      <div className="page-nav">
        <button onClick={() => setPage('create')} className={page === 'create' ? 'active' : ''}>Create/Manage</button>
        <button onClick={() => setPage('view')} className={page === 'view' ? 'active' : ''}>View/Buy</button>
      </div>

      {page === 'create' && (
        <>
          <section>
            <h3>Create New Item</h3>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 10, maxWidth: 400 }}>
              <input placeholder="Name" value={name} onChange={(e) => setName(e.target.value)} />
              <input placeholder="Price (ETH)" type="number" value={price} onChange={(e) => setPrice(e.target.value)} />
              <input placeholder="Expiry Date" type="date" value={expiryDate} onChange={(e) => setExpiryDate(e.target.value)} />
              <input placeholder="Manufacturing Date" type="date" value={manufacturingDate} onChange={(e) => setManufacturingDate(e.target.value)} />
              <input placeholder="Quantity" type="number" value={quantity} onChange={(e) => setQuantity(e.target.value)} />
              <select value={role} onChange={(e) => setRole(Number(e.target.value))}>
                <option value={0}>Manufacturer</option>
                <option value={1}>Wholesaler</option>
                <option value={2}>Retailer</option>
              </select>
              <button onClick={createItem} style={{ padding: '10px', background: '#28a745', color: 'white', border: 'none', borderRadius: 5 }}>Create Item</button>
            </div>
          </section>

          <section style={{ marginTop: 40 }}>
            <h3>Put Item For Sale</h3>
            <div style={{ display: 'flex', gap: 10, maxWidth: 400 }}>
              <input placeholder="SKU" value={sku} onChange={(e) => setSku(e.target.value)} />
              <input placeholder="Price (ETH)" type="number" value={putForSalePrice} onChange={(e) => setPutForSalePrice(e.target.value)} />
              <button onClick={putForSale} style={{ padding: '10px', background: '#ffc107', color: 'black', border: 'none', borderRadius: 5 }}>Put For Sale</button>
            </div>
          </section>

          <section style={{ marginTop: 40 }}>
            <h3>Your Items</h3>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(300px, 1fr))', gap: 20 }}>
              {allItems.filter(item => item.owner.toLowerCase() === connectedAccount?.toLowerCase()).map(item => (
                <div key={item.sku} style={{ border: '1px solid #ddd', padding: 15, borderRadius: 8 }}>
                  <h4>{item.name}</h4>
                  <p>SKU: {item.sku}</p>
                  <p>Price: {item.price} ETH</p>
                  <p>Expiry: {item.expiryDate}</p>
                  <p>Manufacturing: {item.manufacturingDate}</p>
                  <p>Quantity: {item.quantity}</p>
                  <p>Role: {['Manufacturer', 'Wholesaler', 'Retailer'][item.role]}</p>
                  <p>Status: {['Created', 'ForSale', 'Sold'][item.status]}</p>
                </div>
              ))}
            </div>
          </section>
        </>
      )}

      {page === 'view' && (
        <>
          <section>
            <h3>Available Items</h3>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(300px, 1fr))', gap: 20 }}>
              {allItems.filter(item => item.status === 1 && item.owner.toLowerCase() !== connectedAccount?.toLowerCase()).map(item => (
                <div key={item.sku} style={{ border: '1px solid #ddd', padding: 15, borderRadius: 8 }}>
                  <h4>{item.name}</h4>
                  <p>SKU: {item.sku}</p>
                  <p>Price: {item.price} ETH</p>
                  <p>Expiry: {item.expiryDate}</p>
                  <p>Manufacturing: {item.manufacturingDate}</p>
                  <p>Quantity: {item.quantity}</p>
                  <p>Role: {['Manufacturer', 'Wholesaler', 'Retailer'][item.role]}</p>
                  <p>Owner: {item.owner}</p>
                  <button onClick={() => buyItem(item.sku, item.price)} style={{ padding: '10px', background: '#dc3545', color: 'white', border: 'none', borderRadius: 5, width: '100%' }}>Buy Item</button>
                </div>
              ))}
            </div>
          </section>

          <section style={{ marginTop: 40 }}>
            <h3>Fetch Item by SKU</h3>
            <div style={{ display: 'flex', gap: 10, maxWidth: 400 }}>
              <input placeholder="SKU" value={sku} onChange={(e) => setSku(e.target.value)} />
              <button onClick={fetchItem} style={{ padding: '10px', background: '#17a2b8', color: 'white', border: 'none', borderRadius: 5 }}>Fetch</button>
            </div>
          </section>

          {fetched && (
            <pre style={{ background: "#f4f4f4", padding: 10, marginTop: 20 }}>{JSON.stringify(fetched, null, 2)}</pre>
          )}
        </>
      )}

      <p style={{ color: "red" }}>{msg}</p>
    </div>
  );
}
