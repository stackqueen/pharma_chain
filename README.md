# Pharma Supply Chain DApp

A decentralized application (DApp) for managing pharmaceutical supply chains using Ethereum blockchain technology. This project enables secure, transparent tracking of pharmaceutical items from manufacturing to retail, with role-based access for manufacturers, wholesalers, and retailers.

## Features

- **Item Management**: Create pharmaceutical items with detailed metadata including expiry dates, manufacturing dates, quantities, and roles
- **Role-Based System**: Support for Manufacturer, Wholesaler, and Retailer roles in the supply chain
- **Blockchain Integration**: Smart contract-based item tracking and transactions on Ethereum
- **Wallet Integration**: MetaMask integration for secure wallet connections and transactions
- **REST API**: Backend API for interacting with the blockchain contract
- **Responsive UI**: React-based frontend with mobile-friendly design
- **Real-time Updates**: Live fetching and updating of item statuses and ownership

## Tech Stack

### Blockchain
- **Solidity**: Smart contract development
- **Truffle**: Development framework for Ethereum
- **Ganache**: Local blockchain for development

### Backend
- **Node.js**: Runtime environment
- **Express.js**: Web framework for API
- **Web3.js**: Ethereum JavaScript API
- **CORS**: Cross-origin resource sharing

### Frontend
- **React**: UI library with hooks
- **Vite**: Build tool and development server
- **Ethers.js**: Ethereum wallet and provider library
- **Axios**: HTTP client for API calls

## Prerequisites

Before running this project, ensure you have the following installed:

- **Node.js** (v16 or higher)
- **npm** or **yarn**
- **MetaMask** browser extension
- **Ganache** (for local blockchain development)
- **Truffle** (`npm install -g truffle`)

## Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd pharma-supply-chain
   ```

2. **Install dependencies for each component:**

   **Backend:**
   ```bash
   cd Backend
   npm install
   cd ..
   ```

   **Frontend:**
   ```bash
   cd Frontend
   npm install
   cd ..
   ```

   **Blockchain:**
   ```bash
   cd Blockchain
   npm install
   cd ..
   ```

## Setup

### 1. Blockchain Setup

1. **Start Ganache:**
   - Open Ganache and create a new workspace
   - Note the RPC server URL (default: `http://127.0.0.1:8545`)

2. **Deploy Smart Contract:**
   ```bash
   cd Blockchain
   truffle migrate --reset
   ```
   - This will deploy the SupplyChain contract and generate build artifacts

3. **Update Environment Variables:**
   - Copy the contract address from Truffle deployment output
   - Create a `.env` file in the `Backend` directory:
     ```
     GANACHE_URL=http://127.0.0.1:8545
     CONTRACT_ADDRESS=<deployed-contract-address>
     CONTRACT_ABI=<path-to-abi-json>
     ```

### 2. Backend Setup

1. **Configure Environment:**
   - Ensure `.env` file is created with the correct contract details

2. **Start the Backend Server:**
   ```bash
   cd Backend
   npm start
   ```
   - Server will run on `http://localhost:3001`

### 3. Frontend Setup

1. **Start the Development Server:**
   ```bash
   cd Frontend
   npm run dev
   ```
   - Frontend will be available at `http://localhost:5173`

## Usage

1. **Connect Wallet:**
   - Open the frontend in your browser
   - Click "Connect MetaMask" and approve the connection

2. **Create Items:**
   - Navigate to "Create/Manage" tab
   - Fill in item details (name, price, expiry date, manufacturing date, quantity, role)
   - Click "Create Item"

3. **Put Items for Sale:**
   - Enter SKU and desired price
   - Click "Put For Sale"

4. **View and Buy Items:**
   - Switch to "View/Buy" tab
   - Browse available items
   - Click "Buy Item" to purchase

## API Endpoints

The backend provides the following REST API endpoints:

- `GET /items` - Retrieve all items
- `POST /create-item` - Create a new item
  ```json
  {
    "name": "Aspirin",
    "price": 1000000000000000000,
    "expiryDate": "2024-12-31",
    "manufacturingDate": "2024-01-01",
    "quantity": 100,
    "role": 0,
    "from": "0x..."
  }
  ```
- `POST /buy-item` - Purchase an item
- `POST /put-for-sale` - List an item for sale
- `GET /item/:sku/status` - Get specific item details
- `GET /welcome` - Welcome message

## Smart Contract Details

### SupplyChain Contract

**Key Functions:**
- `createItem(string _name, uint _price, uint _expiryDate, uint _manufacturingDate, uint _quantity, uint _role)` - Create new item
- `putForSale(uint _sku, uint _price)` - List item for sale
- `buyItem(uint _sku)` - Purchase item
- `getItem(uint _sku)` - Retrieve item details
- `totalItems()` - Get total number of items

**Item Structure:**
```solidity
struct Item {
    uint sku;
    string name;
    uint price;
    uint expiryDate;
    uint manufacturingDate;
    uint quantity;
    address owner;
    Status status;
    Role role;
}
```

**Enums:**
- `Status`: Created, ForSale, Sold
- `Role`: Manufacturer, Wholesaler, Retailer

## Project Structure

```
pharma-supply-chain/
├── Backend/
│   ├── server.js
│   ├── package.json
│   └── ...
├── Blockchain/
│   ├── contracts/
│   │   └── SupplyChain.sol
│   ├── migrations/
│   ├── truffle-config.js
│   └── ...
├── Frontend/
│   ├── src/
│   │   ├── App.jsx
│   │   ├── utils/
│   │   │   └── blockchain.js
│   │   └── ...
│   ├── package.json
│   └── ...
├── TODO.md
├── Frontend_TODO.md
└── README.md
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.


