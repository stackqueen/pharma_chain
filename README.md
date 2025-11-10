# 💊 Pharma Supply Chain DApp

A decentralized application (DApp) for managing pharmaceutical supply chains using **Ethereum blockchain technology**.  
This project enables secure, transparent tracking of pharmaceutical items from manufacturing to retail,  
with role-based access for manufacturers, wholesalers, and retailers.

---

## 📊 Project Presentation & Report

You can view the project materials here:  

👉 [Presentation](./docs/Pharma_SupplyChain_Presentation.pptx)  
👉 [Repor](./docs/Pharma_Supply_Chain_Blockchain_Report_Slesha_Panda_Detailed.docx)

---

## 🚀 Features

- **Item Management** – Create and manage items with full metadata (name, expiry, manufacturing date, quantity, role).  
- **Role-Based System** – Supports Manufacturer, Wholesaler, and Retailer roles.  
- **Blockchain Integration** – Smart contract–based item creation and ownership tracking.  
- **Wallet Integration** – Connects seamlessly with MetaMask for secure blockchain transactions.  
- **REST API** – Backend API for smart contract interactions.  
- **Responsive UI** – React + Vite frontend with modern design.  
- **Real-time Updates** – Live fetching and updating of item status and ownership.

---

## 🧠 Tech Stack

### Blockchain
- **Solidity** – Smart contract development  
- **Truffle** – Ethereum development framework  
- **Ganache** – Local blockchain simulator  

### Backend
- **Node.js** – JavaScript runtime  
- **Express.js** – Web framework for API  
- **Web3.js / Ethers.js** – Blockchain interaction  
- **CORS** – Cross-Origin Resource Sharing  

### Frontend
- **React (Vite)** – User interface  
- **Axios** – API integration  
- **Ethers.js** – Wallet and blockchain provider  

---

## ⚙️ Prerequisites

Ensure you have installed:
- Node.js (v16 or higher)
- npm or yarn
- MetaMask browser extension
- Ganache
- Truffle (`npm install -g truffle`)

---

## 📦 Installation

```bash
git clone <repository-url>
cd pharma-supply-chain


# 🧩 Pharma Supply Chain DApp — Installation & Setup

# 1️⃣ Clone the repository
git clone <repository-url>
cd pharma-supply-chain

# 2️⃣ Install dependencies for all modules
echo "Installing dependencies..."
cd Blockchain && npm install && cd ..
cd Backend && npm install && cd ..
cd Frontend && npm install && cd ..

# 3️⃣ Start Ganache (manually)
# Open Ganache and create a new workspace
# Note RPC URL (default: http://127.0.0.1:8545)

# 4️⃣ Deploy the smart contract
cd Blockchain
truffle migrate --reset
cd ..

# 5️⃣ Configure backend environment variables
cd Backend
cat <<EOT >> .env
GANACHE_URL=http://127.0.0.1:8545
CONTRACT_ADDRESS=<deployed-contract-address>
CONTRACT_ABI_PATH=../Blockchain/build/contracts/SupplyChain.json
PORT=3001
EOT

# 6️⃣ Start the backend server
npm start &
cd ..

# 7️⃣ Start the frontend (in a new terminal or same script)
cd Frontend
npm run dev

# 🎉 Done!
# Frontend: http://localhost:5173
# Backend:  http://localhost:3001
# Ganache:  http://127.0.0.1:8545

