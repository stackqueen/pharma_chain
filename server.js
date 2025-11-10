const express = require('express');
const { Web3 } = require('web3');
const cors = require('cors');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3001;

// Middleware
app.use(cors());
app.use(express.json());

// Initialize Web3
const web3 = new Web3(process.env.GANACHE_URL || 'http://127.0.0.1:8545');

// Contract ABI and Address (to be set after deployment)
const contractABI = process.env.CONTRACT_ABI ? JSON.parse(process.env.CONTRACT_ABI) : [];
const contractAddress = process.env.CONTRACT_ADDRESS || '';
let contract;

// Initialize contract
if (contractAddress && contractABI.length > 0) {
  contract = new web3.eth.Contract(contractABI, contractAddress);
}

// API Endpoints
app.get('/items', async (req, res) => {
  try {
    if (!contract) return res.status(500).json({ error: 'Contract not initialized' });

    const totalItems = await contract.methods.totalItems().call();
    const items = [];

    for (let i = 1; i <= totalItems; i++) {
      const item = await contract.methods.getItem(i).call();
      items.push({
        sku: item[0],
        name: item[1],
        price: item[2],
        expiryDate: item[3],
        manufacturingDate: item[4],
        quantity: item[5],
        owner: item[6],
        status: item[7],
        role: item[8]
      });
    }

    res.json(items);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.post('/create-item', async (req, res) => {
  try {
    const { name, price, expiryDate, manufacturingDate, quantity, role, from } = req.body;
    if (!contract || !from || !name || price === undefined || !expiryDate || !manufacturingDate || !quantity || role === undefined) {
      return res.status(400).json({ error: 'All fields are required' });
    }

    const expiryTimestamp = Math.floor(new Date(expiryDate).getTime() / 1000);
    const manufacturingTimestamp = Math.floor(new Date(manufacturingDate).getTime() / 1000);

    const gasEstimate = await contract.methods.createItem(name, price, expiryTimestamp, manufacturingTimestamp, quantity, role).estimateGas({ from });
    const result = await contract.methods.createItem(name, price, expiryTimestamp, manufacturingTimestamp, quantity, role).send({ from, gas: gasEstimate });

    res.json({ success: true, transactionHash: result.transactionHash });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.post('/buy-item', async (req, res) => {
  try {
    const { sku, from, value } = req.body;
    if (!contract || !from || !value) return res.status(400).json({ error: 'Invalid request' });

    const gasEstimate = await contract.methods.buyItem(sku).estimateGas({ from, value });
    const result = await contract.methods.buyItem(sku).send({ from, value, gas: gasEstimate });

    res.json({ success: true, transactionHash: result.transactionHash });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.post('/put-for-sale', async (req, res) => {
  try {
    const { sku, price, from } = req.body;
    if (!contract || !from || sku === undefined || price === undefined) return res.status(400).json({ error: 'Invalid request' });

    const gasEstimate = await contract.methods.putForSale(sku, price).estimateGas({ from });
    const result = await contract.methods.putForSale(sku, price).send({ from, gas: gasEstimate });

    res.json({ success: true, transactionHash: result.transactionHash });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.get('/welcome', (req, res) => {
  console.log(`Request received: ${req.method} ${req.path}`);
  res.json({ message: 'Welcome to the Pharma Supply Chain API!' });
});

app.get('/item/:sku/status', async (req, res) => {
  console.log(`Request received: ${req.method} ${req.path}`);
  try {
    const sku = parseInt(req.params.sku);
    if (!contract) return res.status(500).json({ error: 'Contract not initialized' });

    const item = await contract.methods.getItem(sku).call();
    res.json({
      sku: item[0],
      name: item[1],
      price: item[2],
      expiryDate: item[3],
      manufacturingDate: item[4],
      quantity: item[5],
      owner: item[6],
      status: item[7],
      role: item[8]
    });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
