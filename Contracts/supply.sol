{
  "contractName": "SupplyChain",
  "abi": [
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "sku",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "string",
          "name": "name",
          "type": "string"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "price",
          "type": "uint256"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "owner",
          "type": "address"
        }
      ],
      "name": "ItemCreated",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "sku",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "price",
          "type": "uint256"
        }
      ],
      "name": "ItemForSale",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "sku",
          "type": "uint256"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "buyer",
          "type": "address"
        }
      ],
      "name": "ItemSold",
      "type": "event"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "name": "items",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "sku",
          "type": "uint256"
        },
        {
          "internalType": "string",
          "name": "name",
          "type": "string"
        },
        {
          "internalType": "uint256",
          "name": "price",
          "type": "uint256"
        },
        {
          "internalType": "address",
          "name": "owner",
          "type": "address"
        },
        {
          "internalType": "enum SupplyChain.Status",
          "name": "status",
          "type": "uint8"
        }
      ],
      "stateMutability": "view",
      "type": "function",
      "constant": true
    },
    {
      "inputs": [],
      "name": "skuCount",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function",
      "constant": true
    },
    {
      "inputs": [
        {
          "internalType": "string",
          "name": "_name",
          "type": "string"
        },
        {
          "internalType": "uint256",
          "name": "_price",
          "type": "uint256"
        }
      ],
      "name": "createItem",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_sku",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_price",
          "type": "uint256"
        }
      ],
      "name": "putForSale",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_sku",
          "type": "uint256"
        }
      ],
      "name": "buyItem",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function",
      "payable": true
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_sku",
          "type": "uint256"
        }
      ],
      "name": "getItem",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        },
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        },
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        },
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "enum SupplyChain.Status",
          "name": "",
          "type": "uint8"
        }
      ],
      "stateMutability": "view",
      "type": "function",
      "constant": true
    },
    {
      "inputs": [],
      "name": "totalItems",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function",
      "constant": true
    }
  ],
  "metadata": "{\"compiler\":{\"version\":\"0.8.19+commit.7dd6d404\"},\"language\":\"Solidity\",\"output\":{\"abi\":[{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"uint256\",\"name\":\"sku\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"string\",\"name\":\"name\",\"type\":\"string\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"price\",\"type\":\"uint256\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"owner\",\"type\":\"address\"}],\"name\":\"ItemCreated\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"uint256\",\"name\":\"sku\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"price\",\"type\":\"uint256\"}],\"name\":\"ItemForSale\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"uint256\",\"name\":\"sku\",\"type\":\"uint256\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"buyer\",\"type\":\"address\"}],\"name\":\"ItemSold\",\"type\":\"event\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"_sku\",\"type\":\"uint256\"}],\"name\":\"buyItem\",\"outputs\":[],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"string\",\"name\":\"_name\",\"type\":\"string\"},{\"internalType\":\"uint256\",\"name\":\"_price\",\"type\":\"uint256\"}],\"name\":\"createItem\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"_sku\",\"type\":\"uint256\"}],\"name\":\"getItem\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"},{\"internalType\":\"string\",\"name\":\"\",\"type\":\"string\"},{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"},{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"},{\"internalType\":\"enum SupplyChain.Status\",\"name\":\"\",\"type\":\"uint8\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"name\":\"items\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"sku\",\"type\":\"uint256\"},{\"internalType\":\"string\",\"name\":\"name\",\"type\":\"string\"},{\"internalType\":\"uint256\",\"name\":\"price\",\"type\":\"uint256\"},{\"internalType\":\"address\",\"name\":\"owner\",\"type\":\"address\"},{\"internalType\":\"enum SupplyChain.Status\",\"name\":\"status\",\"type\":\"uint8\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"_sku\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"_price\",\"type\":\"uint256\"}],\"name\":\"putForSale\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"skuCount\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"totalItems\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"}],\"devdoc\":{\"kind\":\"dev\",\"methods\":{},\"version\":1},\"userdoc\":{\"kind\":\"user\",\"methods\":{},\"version\":1}},\"settings\":{\"compilationTarget\":{\"project:/contracts/SupplyChain.sol\":\"SupplyChain\"},\"evmVersion\":\"paris\",\"libraries\":{},\"metadata\":{\"bytecodeHash\":\"ipfs\"},\"optimizer\":{\"enabled\":true,\"runs\":200},\"remappings\":[]},\"sources\":{\"project:/contracts/SupplyChain.sol\":{\"keccak256\":\"0x54d4740703eb2eaf2d47577e525bd200631125bd093d8a3eed30fd3e2f4cb9f1\",\"license\":\"MIT\",\"urls\":[\"bzz-raw://be1d6ee8ddcfce7777af420fc973953549e2cba25645931768420df53945417e\",\"dweb:/ipfs/QmYX9KzMvfJ77akLQkjVrMASE6djLReFG6kn3z4876ST6D\"]}},\"version\":1}",
  "bytecode": "0x608060405234801561001057600080fd5b50610aeb806100206000396000f3fe6080604052600436106100705760003560e01c80633cd76be21161004e5780633cd76be2146100e45780638c55174214610106578063bfb231d214610126578063e7fb74c71461014657600080fd5b806322702473146100755780632799276d1461009e5780633129e773146100b3575b600080fd5b34801561008157600080fd5b5061008b60005481565b6040519081526020015b60405180910390f35b3480156100aa57600080fd5b5060005461008b565b3480156100bf57600080fd5b506100d36100ce36600461071a565b610159565b60405161009595949392919061078f565b3480156100f057600080fd5b506101046100ff3660046107ee565b610264565b005b34801561011257600080fd5b50610104610121366004610826565b610335565b34801561013257600080fd5b506100d361014136600461071a565b610487565b61010461015436600461071a565b61054c565b6000818152600160205260408120805460609183918291829182036101995760405162461bcd60e51b8152600401610190906108db565b60405180910390fd5b8054600282015460038301546001840180549092916001600160a01b03811691600160a01b90910460ff169084906101d090610908565b80601f01602080910402602001604051908101604052809291908181526020018280546101fc90610908565b80156102495780601f1061021e57610100808354040283529160200191610249565b820191906000526020600020905b81548152906001019060200180831161022c57829003601f168201915b50505050509350955095509550955095505091939590929450565b600082815260016020526040812080549091036102935760405162461bcd60e51b8152600401610190906108db565b60038101546001600160a01b031633146102df5760405162461bcd60e51b815260206004820152600d60248201526c2737ba103a34329037bbb732b960991b6044820152606401610190565b6002810182905560038101805460ff60a01b1916600160a01b17905560405182815283907f5ac49d898f4c1239088b74e396a1a86348f8870dbcc2476a3385fd12b62940c89060200160405180910390a2505050565b60008251116103765760405162461bcd60e51b815260206004820152600d60248201526c13985b59481c995c5d5a5c9959609a1b6044820152606401610190565b60016000808282546103889190610958565b90915550506040805160a081018252600080548252602082018590529181018390523360608201529060808201526000805481526001602081815260409092208351815591830151908201906103de90826109c0565b50604082015160028083019190915560608301516003830180546001600160a01b039092166001600160a01b031983168117825560808601519391926001600160a81b0319161790600160a01b90849081111561043d5761043d610779565b0217905550506000546040513392507f4f7f943ede3f118d52f137992d1d5e5f5723aac6037c6b8814b8432f44ed05a19061047b9086908690610a80565b60405180910390a35050565b6001602081905260009182526040909120805491810180546104a890610908565b80601f01602080910402602001604051908101604052809291908181526020018280546104d490610908565b80156105215780601f106104f657610100808354040283529160200191610521565b820191906000526020600020905b81548152906001019060200180831161050457829003601f168201915b5050505060028301546003909301549192916001600160a01b0381169150600160a01b900460ff1685565b6000818152600160205260408120805490910361057b5760405162461bcd60e51b8152600401610190906108db565b60016003820154600160a01b900460ff16600281111561059d5761059d610779565b146105de5760405162461bcd60e51b81526020600482015260116024820152704974656d206e6f7420666f722073616c6560781b6044820152606401610190565b806002015434101561062a5760405162461bcd60e51b8152602060048201526015602482015274139bdd08195b9bdd59da08115d1a195c881cd95b9d605a1b6044820152606401610190565b600381018054600160a11b6001600160a81b0319821660ff60a01b193316171790915560028201546001600160a01b03909116901561069e5760028201546040516001600160a01b0383169180156108fc02916000818181858888f1935050505015801561069c573d6000803e3d6000fd5b505b60008260020154346106b09190610aa2565b905080156106e757604051339082156108fc029083906000818181858888f193505050501580156106e5573d6000803e3d6000fd5b505b604051339085907f7de4035ced290be6d7724645d43bad448b5d8cc76743ff4da172c2d8e1caa0f590600090a350505050565b60006020828403121561072c57600080fd5b5035919050565b6000815180845260005b818110156107595760208185018101518683018201520161073d565b506000602082860101526020601f19601f83011685010191505092915050565b634e487b7160e01b600052602160045260246000fd5b85815260a0602082015260006107a860a0830187610733565b604083018690526001600160a01b03851660608401529050600383106107de57634e487b7160e01b600052602160045260246000fd5b8260808301529695505050505050565b6000806040838503121561080157600080fd5b50508035926020909101359150565b634e487b7160e01b600052604160045260246000fd5b6000806040838503121561083957600080fd5b823567ffffffffffffffff8082111561085157600080fd5b818501915085601f83011261086557600080fd5b81358181111561087757610877610810565b604051601f8201601f19908116603f0116810190838211818310171561089f5761089f610810565b816040528281528860208487010111156108b857600080fd5b826020860160208301376000602093820184015298969091013596505050505050565b602080825260139082015272125d195b48191bd95cc81b9bdd08195e1a5cdd606a1b604082015260600190565b600181811c9082168061091c57607f821691505b60208210810361093c57634e487b7160e01b600052602260045260246000fd5b50919050565b634e487b7160e01b600052601160045260246000fd5b8082018082111561096b5761096b610942565b92915050565b601f8211156109bb57600081815260208120601f850160051c810160208610156109985750805b601f850160051c820191505b818110156109b7578281556001016109a4565b5050505b505050565b815167ffffffffffffffff8111156109da576109da610810565b6109ee816109e88454610908565b84610971565b602080601f831160018114610a235760008415610a0b5750858301515b600019600386901b1c1916600185901b1785556109b7565b600085815260208120601f198616915b82811015610a5257888601518255948401946001909101908401610a33565b5085821015610a705787850151600019600388901b60f8161c191681555b5050505050600190811b01905550565b604081526000610a936040830185610733565b90508260208301529392505050565b8181038181111561096b5761096b61094256fea264697066735822122028717e7990f298d904ed2916d124cf8eba1bff8a649db224cab679a8b64c659764736f6c63430008130033",
  "deployedBytecode": "0x6080604052600436106100705760003560e01c80633cd76be21161004e5780633cd76be2146100e45780638c55174214610106578063bfb231d214610126578063e7fb74c71461014657600080fd5b806322702473146100755780632799276d1461009e5780633129e773146100b3575b600080fd5b34801561008157600080fd5b5061008b60005481565b6040519081526020015b60405180910390f35b3480156100aa57600080fd5b5060005461008b565b3480156100bf57600080fd5b506100d36100ce36600461071a565b610159565b60405161009595949392919061078f565b3480156100f057600080fd5b506101046100ff3660046107ee565b610264565b005b34801561011257600080fd5b50610104610121366004610826565b610335565b34801561013257600080fd5b506100d361014136600461071a565b610487565b61010461015436600461071a565b61054c565b6000818152600160205260408120805460609183918291829182036101995760405162461bcd60e51b8152600401610190906108db565b60405180910390fd5b8054600282015460038301546001840180549092916001600160a01b03811691600160a01b90910460ff169084906101d090610908565b80601f01602080910402602001604051908101604052809291908181526020018280546101fc90610908565b80156102495780601f1061021e57610100808354040283529160200191610249565b820191906000526020600020905b81548152906001019060200180831161022c57829003601f168201915b50505050509350955095509550955095505091939590929450565b600082815260016020526040812080549091036102935760405162461bcd60e51b8152600401610190906108db565b60038101546001600160a01b031633146102df5760405162461bcd60e51b815260206004820152600d60248201526c2737ba103a34329037bbb732b960991b6044820152606401610190565b6002810182905560038101805460ff60a01b1916600160a01b17905560405182815283907f5ac49d898f4c1239088b74e396a1a86348f8870dbcc2476a3385fd12b62940c89060200160405180910390a2505050565b60008251116103765760405162461bcd60e51b815260206004820152600d60248201526c13985b59481c995c5d5a5c9959609a1b6044820152606401610190565b60016000808282546103889190610958565b90915550506040805160a081018252600080548252602082018590529181018390523360608201529060808201526000805481526001602081815260409092208351815591830151908201906103de90826109c0565b50604082015160028083019190915560608301516003830180546001600160a01b039092166001600160a01b031983168117825560808601519391926001600160a81b0319161790600160a01b90849081111561043d5761043d610779565b0217905550506000546040513392507f4f7f943ede3f118d52f137992d1d5e5f5723aac6037c6b8814b8432f44ed05a19061047b9086908690610a80565b60405180910390a35050565b6001602081905260009182526040909120805491810180546104a890610908565b80601f01602080910402602001604051908101604052809291908181526020018280546104d490610908565b80156105215780601f106104f657610100808354040283529160200191610521565b820191906000526020600020905b81548152906001019060200180831161050457829003601f168201915b5050505060028301546003909301549192916001600160a01b0381169150600160a01b900460ff1685565b6000818152600160205260408120805490910361057b5760405162461bcd60e51b8152600401610190906108db565b60016003820154600160a01b900460ff16600281111561059d5761059d610779565b146105de5760405162461bcd60e51b81526020600482015260116024820152704974656d206e6f7420666f722073616c6560781b6044820152606401610190565b806002015434101561062a5760405162461bcd60e51b8152602060048201526015602482015274139bdd08195b9bdd59da08115d1a195c881cd95b9d605a1b6044820152606401610190565b600381018054600160a11b6001600160a81b0319821660ff60a01b193316171790915560028201546001600160a01b03909116901561069e5760028201546040516001600160a01b0383169180156108fc02916000818181858888f1935050505015801561069c573d6000803e3d6000fd5b505b60008260020154346106b09190610aa2565b905080156106e757604051339082156108fc029083906000818181858888f193505050501580156106e5573d6000803e3d6000fd5b505b604051339085907f7de4035ced290be6d7724645d43bad448b5d8cc76743ff4da172c2d8e1caa0f590600090a350505050565b60006020828403121561072c57600080fd5b5035919050565b6000815180845260005b818110156107595760208185018101518683018201520161073d565b506000602082860101526020601f19601f83011685010191505092915050565b634e487b7160e01b600052602160045260246000fd5b85815260a0602082015260006107a860a0830187610733565b604083018690526001600160a01b03851660608401529050600383106107de57634e487b7160e01b600052602160045260246000fd5b8260808301529695505050505050565b6000806040838503121561080157600080fd5b50508035926020909101359150565b634e487b7160e01b600052604160045260246000fd5b6000806040838503121561083957600080fd5b823567ffffffffffffffff8082111561085157600080fd5b818501915085601f83011261086557600080fd5b81358181111561087757610877610810565b604051601f8201601f19908116603f0116810190838211818310171561089f5761089f610810565b816040528281528860208487010111156108b857600080fd5b826020860160208301376000602093820184015298969091013596505050505050565b602080825260139082015272125d195b48191bd95cc81b9bdd08195e1a5cdd606a1b604082015260600190565b600181811c9082168061091c57607f821691505b60208210810361093c57634e487b7160e01b600052602260045260246000fd5b50919050565b634e487b7160e01b600052601160045260246000fd5b8082018082111561096b5761096b610942565b92915050565b601f8211156109bb57600081815260208120601f850160051c810160208610156109985750805b601f850160051c820191505b818110156109b7578281556001016109a4565b5050505b505050565b815167ffffffffffffffff8111156109da576109da610810565b6109ee816109e88454610908565b84610971565b602080601f831160018114610a235760008415610a0b5750858301515b600019600386901b1c1916600185901b1785556109b7565b600085815260208120601f198616915b82811015610a5257888601518255948401946001909101908401610a33565b5085821015610a705787850151600019600388901b60f8161c191681555b5050505050600190811b01905550565b604081526000610a936040830185610733565b90508260208301529392505050565b8181038181111561096b5761096b61094256fea264697066735822122028717e7990f298d904ed2916d124cf8eba1bff8a649db224cab679a8b64c659764736f6c63430008130033",
  "immutableReferences": {},
  "generatedSources": [],
  "deployedGeneratedSources": [
    {
      "ast": {
        "nodeType": "YulBlock",
        "src": "0:8033:1",
        "statements": [
          {
            "nodeType": "YulBlock",
            "src": "6:3:1",
            "statements": []
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "115:76:1",
              "statements": [
                {
                  "nodeType": "YulAssignment",
                  "src": "125:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "137:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "148:2:1",
                        "type": "",
                        "value": "32"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "133:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "133:18:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "125:4:1"
                    }
                  ]
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "167:9:1"
                      },
                      {
                        "name": "value0",
                        "nodeType": "YulIdentifier",
                        "src": "178:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "160:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "160:25:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "160:25:1"
                }
              ]
            },
            "name": "abi_encode_tuple_t_uint256__to_t_uint256__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "84:9:1",
                "type": ""
              },
              {
                "name": "value0",
                "nodeType": "YulTypedName",
                "src": "95:6:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "106:4:1",
                "type": ""
              }
            ],
            "src": "14:177:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "266:110:1",
              "statements": [
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "312:16:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "321:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "324:1:1",
                              "type": "",
                              "value": "0"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "314:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "314:12:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "314:12:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "dataEnd",
                            "nodeType": "YulIdentifier",
                            "src": "287:7:1"
                          },
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "296:9:1"
                          }
                        ],
                        "functionName": {
                          "name": "sub",
                          "nodeType": "YulIdentifier",
                          "src": "283:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "283:23:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "308:2:1",
                        "type": "",
                        "value": "32"
                      }
                    ],
                    "functionName": {
                      "name": "slt",
                      "nodeType": "YulIdentifier",
                      "src": "279:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "279:32:1"
                  },
                  "nodeType": "YulIf",
                  "src": "276:52:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "337:33:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "360:9:1"
                      }
                    ],
                    "functionName": {
                      "name": "calldataload",
                      "nodeType": "YulIdentifier",
                      "src": "347:12:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "347:23:1"
                  },
                  "variableNames": [
                    {
                      "name": "value0",
                      "nodeType": "YulIdentifier",
                      "src": "337:6:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_decode_tuple_t_uint256",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "232:9:1",
                "type": ""
              },
              {
                "name": "dataEnd",
                "nodeType": "YulTypedName",
                "src": "243:7:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "value0",
                "nodeType": "YulTypedName",
                "src": "255:6:1",
                "type": ""
              }
            ],
            "src": "196:180:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "431:373:1",
              "statements": [
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "441:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "value",
                        "nodeType": "YulIdentifier",
                        "src": "461:5:1"
                      }
                    ],
                    "functionName": {
                      "name": "mload",
                      "nodeType": "YulIdentifier",
                      "src": "455:5:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "455:12:1"
                  },
                  "variables": [
                    {
                      "name": "length",
                      "nodeType": "YulTypedName",
                      "src": "445:6:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "pos",
                        "nodeType": "YulIdentifier",
                        "src": "483:3:1"
                      },
                      {
                        "name": "length",
                        "nodeType": "YulIdentifier",
                        "src": "488:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "476:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "476:19:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "476:19:1"
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "504:10:1",
                  "value": {
                    "kind": "number",
                    "nodeType": "YulLiteral",
                    "src": "513:1:1",
                    "type": "",
                    "value": "0"
                  },
                  "variables": [
                    {
                      "name": "i",
                      "nodeType": "YulTypedName",
                      "src": "508:1:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "575:110:1",
                    "statements": [
                      {
                        "nodeType": "YulVariableDeclaration",
                        "src": "589:14:1",
                        "value": {
                          "kind": "number",
                          "nodeType": "YulLiteral",
                          "src": "599:4:1",
                          "type": "",
                          "value": "0x20"
                        },
                        "variables": [
                          {
                            "name": "_1",
                            "nodeType": "YulTypedName",
                            "src": "593:2:1",
                            "type": ""
                          }
                        ]
                      },
                      {
                        "expression": {
                          "arguments": [
                            {
                              "arguments": [
                                {
                                  "arguments": [
                                    {
                                      "name": "pos",
                                      "nodeType": "YulIdentifier",
                                      "src": "631:3:1"
                                    },
                                    {
                                      "name": "i",
                                      "nodeType": "YulIdentifier",
                                      "src": "636:1:1"
                                    }
                                  ],
                                  "functionName": {
                                    "name": "add",
                                    "nodeType": "YulIdentifier",
                                    "src": "627:3:1"
                                  },
                                  "nodeType": "YulFunctionCall",
                                  "src": "627:11:1"
                                },
                                {
                                  "name": "_1",
                                  "nodeType": "YulIdentifier",
                                  "src": "640:2:1"
                                }
                              ],
                              "functionName": {
                                "name": "add",
                                "nodeType": "YulIdentifier",
                                "src": "623:3:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "623:20:1"
                            },
                            {
                              "arguments": [
                                {
                                  "arguments": [
                                    {
                                      "arguments": [
                                        {
                                          "name": "value",
                                          "nodeType": "YulIdentifier",
                                          "src": "659:5:1"
                                        },
                                        {
                                          "name": "i",
                                          "nodeType": "YulIdentifier",
                                          "src": "666:1:1"
                                        }
                                      ],
                                      "functionName": {
                                        "name": "add",
                                        "nodeType": "YulIdentifier",
                                        "src": "655:3:1"
                                      },
                                      "nodeType": "YulFunctionCall",
                                      "src": "655:13:1"
                                    },
                                    {
                                      "name": "_1",
                                      "nodeType": "YulIdentifier",
                                      "src": "670:2:1"
                                    }
                                  ],
                                  "functionName": {
                                    "name": "add",
                                    "nodeType": "YulIdentifier",
                                    "src": "651:3:1"
                                  },
                                  "nodeType": "YulFunctionCall",
                                  "src": "651:22:1"
                                }
                              ],
                              "functionName": {
                                "name": "mload",
                                "nodeType": "YulIdentifier",
                                "src": "645:5:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "645:29:1"
                            }
                          ],
                          "functionName": {
                            "name": "mstore",
                            "nodeType": "YulIdentifier",
                            "src": "616:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "616:59:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "616:59:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "i",
                        "nodeType": "YulIdentifier",
                        "src": "534:1:1"
                      },
                      {
                        "name": "length",
                        "nodeType": "YulIdentifier",
                        "src": "537:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "lt",
                      "nodeType": "YulIdentifier",
                      "src": "531:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "531:13:1"
                  },
                  "nodeType": "YulForLoop",
                  "post": {
                    "nodeType": "YulBlock",
                    "src": "545:21:1",
                    "statements": [
                      {
                        "nodeType": "YulAssignment",
                        "src": "547:17:1",
                        "value": {
                          "arguments": [
                            {
                              "name": "i",
                              "nodeType": "YulIdentifier",
                              "src": "556:1:1"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "559:4:1",
                              "type": "",
                              "value": "0x20"
                            }
                          ],
                          "functionName": {
                            "name": "add",
                            "nodeType": "YulIdentifier",
                            "src": "552:3:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "552:12:1"
                        },
                        "variableNames": [
                          {
                            "name": "i",
                            "nodeType": "YulIdentifier",
                            "src": "547:1:1"
                          }
                        ]
                      }
                    ]
                  },
                  "pre": {
                    "nodeType": "YulBlock",
                    "src": "527:3:1",
                    "statements": []
                  },
                  "src": "523:162:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "arguments": [
                              {
                                "name": "pos",
                                "nodeType": "YulIdentifier",
                                "src": "709:3:1"
                              },
                              {
                                "name": "length",
                                "nodeType": "YulIdentifier",
                                "src": "714:6:1"
                              }
                            ],
                            "functionName": {
                              "name": "add",
                              "nodeType": "YulIdentifier",
                              "src": "705:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "705:16:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "723:4:1",
                            "type": "",
                            "value": "0x20"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "701:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "701:27:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "730:1:1",
                        "type": "",
                        "value": "0"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "694:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "694:38:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "694:38:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "741:57:1",
                  "value": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "pos",
                            "nodeType": "YulIdentifier",
                            "src": "756:3:1"
                          },
                          {
                            "arguments": [
                              {
                                "arguments": [
                                  {
                                    "name": "length",
                                    "nodeType": "YulIdentifier",
                                    "src": "769:6:1"
                                  },
                                  {
                                    "kind": "number",
                                    "nodeType": "YulLiteral",
                                    "src": "777:2:1",
                                    "type": "",
                                    "value": "31"
                                  }
                                ],
                                "functionName": {
                                  "name": "add",
                                  "nodeType": "YulIdentifier",
                                  "src": "765:3:1"
                                },
                                "nodeType": "YulFunctionCall",
                                "src": "765:15:1"
                              },
                              {
                                "arguments": [
                                  {
                                    "kind": "number",
                                    "nodeType": "YulLiteral",
                                    "src": "786:2:1",
                                    "type": "",
                                    "value": "31"
                                  }
                                ],
                                "functionName": {
                                  "name": "not",
                                  "nodeType": "YulIdentifier",
                                  "src": "782:3:1"
                                },
                                "nodeType": "YulFunctionCall",
                                "src": "782:7:1"
                              }
                            ],
                            "functionName": {
                              "name": "and",
                              "nodeType": "YulIdentifier",
                              "src": "761:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "761:29:1"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "752:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "752:39:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "793:4:1",
                        "type": "",
                        "value": "0x20"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "748:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "748:50:1"
                  },
                  "variableNames": [
                    {
                      "name": "end",
                      "nodeType": "YulIdentifier",
                      "src": "741:3:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_encode_string",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "value",
                "nodeType": "YulTypedName",
                "src": "408:5:1",
                "type": ""
              },
              {
                "name": "pos",
                "nodeType": "YulTypedName",
                "src": "415:3:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "end",
                "nodeType": "YulTypedName",
                "src": "423:3:1",
                "type": ""
              }
            ],
            "src": "381:423:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "841:95:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "858:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "arguments": [
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "865:3:1",
                            "type": "",
                            "value": "224"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "870:10:1",
                            "type": "",
                            "value": "0x4e487b71"
                          }
                        ],
                        "functionName": {
                          "name": "shl",
                          "nodeType": "YulIdentifier",
                          "src": "861:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "861:20:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "851:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "851:31:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "851:31:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "898:1:1",
                        "type": "",
                        "value": "4"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "901:4:1",
                        "type": "",
                        "value": "0x21"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "891:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "891:15:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "891:15:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "922:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "925:4:1",
                        "type": "",
                        "value": "0x24"
                      }
                    ],
                    "functionName": {
                      "name": "revert",
                      "nodeType": "YulIdentifier",
                      "src": "915:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "915:15:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "915:15:1"
                }
              ]
            },
            "name": "panic_error_0x21",
            "nodeType": "YulFunctionDefinition",
            "src": "809:127:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "1180:453:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "1197:9:1"
                      },
                      {
                        "name": "value0",
                        "nodeType": "YulIdentifier",
                        "src": "1208:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "1190:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1190:25:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1190:25:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "1235:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1246:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "1231:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1231:18:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "1251:3:1",
                        "type": "",
                        "value": "160"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "1224:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1224:31:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1224:31:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "1264:54:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "value1",
                        "nodeType": "YulIdentifier",
                        "src": "1290:6:1"
                      },
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "1302:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1313:3:1",
                            "type": "",
                            "value": "160"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "1298:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1298:19:1"
                      }
                    ],
                    "functionName": {
                      "name": "abi_encode_string",
                      "nodeType": "YulIdentifier",
                      "src": "1272:17:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1272:46:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "1264:4:1"
                    }
                  ]
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "1338:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1349:2:1",
                            "type": "",
                            "value": "64"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "1334:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1334:18:1"
                      },
                      {
                        "name": "value2",
                        "nodeType": "YulIdentifier",
                        "src": "1354:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "1327:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1327:34:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1327:34:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "1381:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1392:2:1",
                            "type": "",
                            "value": "96"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "1377:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1377:18:1"
                      },
                      {
                        "arguments": [
                          {
                            "name": "value3",
                            "nodeType": "YulIdentifier",
                            "src": "1401:6:1"
                          },
                          {
                            "arguments": [
                              {
                                "arguments": [
                                  {
                                    "kind": "number",
                                    "nodeType": "YulLiteral",
                                    "src": "1417:3:1",
                                    "type": "",
                                    "value": "160"
                                  },
                                  {
                                    "kind": "number",
                                    "nodeType": "YulLiteral",
                                    "src": "1422:1:1",
                                    "type": "",
                                    "value": "1"
                                  }
                                ],
                                "functionName": {
                                  "name": "shl",
                                  "nodeType": "YulIdentifier",
                                  "src": "1413:3:1"
                                },
                                "nodeType": "YulFunctionCall",
                                "src": "1413:11:1"
                              },
                              {
                                "kind": "number",
                                "nodeType": "YulLiteral",
                                "src": "1426:1:1",
                                "type": "",
                                "value": "1"
                              }
                            ],
                            "functionName": {
                              "name": "sub",
                              "nodeType": "YulIdentifier",
                              "src": "1409:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "1409:19:1"
                          }
                        ],
                        "functionName": {
                          "name": "and",
                          "nodeType": "YulIdentifier",
                          "src": "1397:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1397:32:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "1370:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1370:60:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1370:60:1"
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "1472:111:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "1493:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "arguments": [
                                {
                                  "kind": "number",
                                  "nodeType": "YulLiteral",
                                  "src": "1500:3:1",
                                  "type": "",
                                  "value": "224"
                                },
                                {
                                  "kind": "number",
                                  "nodeType": "YulLiteral",
                                  "src": "1505:10:1",
                                  "type": "",
                                  "value": "0x4e487b71"
                                }
                              ],
                              "functionName": {
                                "name": "shl",
                                "nodeType": "YulIdentifier",
                                "src": "1496:3:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "1496:20:1"
                            }
                          ],
                          "functionName": {
                            "name": "mstore",
                            "nodeType": "YulIdentifier",
                            "src": "1486:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "1486:31:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "1486:31:1"
                      },
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "1537:1:1",
                              "type": "",
                              "value": "4"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "1540:4:1",
                              "type": "",
                              "value": "0x21"
                            }
                          ],
                          "functionName": {
                            "name": "mstore",
                            "nodeType": "YulIdentifier",
                            "src": "1530:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "1530:15:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "1530:15:1"
                      },
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "1565:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "1568:4:1",
                              "type": "",
                              "value": "0x24"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "1558:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "1558:15:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "1558:15:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "value4",
                            "nodeType": "YulIdentifier",
                            "src": "1452:6:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1460:1:1",
                            "type": "",
                            "value": "3"
                          }
                        ],
                        "functionName": {
                          "name": "lt",
                          "nodeType": "YulIdentifier",
                          "src": "1449:2:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1449:13:1"
                      }
                    ],
                    "functionName": {
                      "name": "iszero",
                      "nodeType": "YulIdentifier",
                      "src": "1442:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1442:21:1"
                  },
                  "nodeType": "YulIf",
                  "src": "1439:144:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "1603:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1614:3:1",
                            "type": "",
                            "value": "128"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "1599:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1599:19:1"
                      },
                      {
                        "name": "value4",
                        "nodeType": "YulIdentifier",
                        "src": "1620:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "1592:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1592:35:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1592:35:1"
                }
              ]
            },
            "name": "abi_encode_tuple_t_uint256_t_string_memory_ptr_t_uint256_t_address_t_enum$_Status_$5__to_t_uint256_t_string_memory_ptr_t_uint256_t_address_t_uint8__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "1117:9:1",
                "type": ""
              },
              {
                "name": "value4",
                "nodeType": "YulTypedName",
                "src": "1128:6:1",
                "type": ""
              },
              {
                "name": "value3",
                "nodeType": "YulTypedName",
                "src": "1136:6:1",
                "type": ""
              },
              {
                "name": "value2",
                "nodeType": "YulTypedName",
                "src": "1144:6:1",
                "type": ""
              },
              {
                "name": "value1",
                "nodeType": "YulTypedName",
                "src": "1152:6:1",
                "type": ""
              },
              {
                "name": "value0",
                "nodeType": "YulTypedName",
                "src": "1160:6:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "1171:4:1",
                "type": ""
              }
            ],
            "src": "941:692:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "1725:161:1",
              "statements": [
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "1771:16:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "1780:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "1783:1:1",
                              "type": "",
                              "value": "0"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "1773:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "1773:12:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "1773:12:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "dataEnd",
                            "nodeType": "YulIdentifier",
                            "src": "1746:7:1"
                          },
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "1755:9:1"
                          }
                        ],
                        "functionName": {
                          "name": "sub",
                          "nodeType": "YulIdentifier",
                          "src": "1742:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1742:23:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "1767:2:1",
                        "type": "",
                        "value": "64"
                      }
                    ],
                    "functionName": {
                      "name": "slt",
                      "nodeType": "YulIdentifier",
                      "src": "1738:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1738:32:1"
                  },
                  "nodeType": "YulIf",
                  "src": "1735:52:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "1796:33:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "1819:9:1"
                      }
                    ],
                    "functionName": {
                      "name": "calldataload",
                      "nodeType": "YulIdentifier",
                      "src": "1806:12:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1806:23:1"
                  },
                  "variableNames": [
                    {
                      "name": "value0",
                      "nodeType": "YulIdentifier",
                      "src": "1796:6:1"
                    }
                  ]
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "1838:42:1",
                  "value": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "1865:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1876:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "1861:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1861:18:1"
                      }
                    ],
                    "functionName": {
                      "name": "calldataload",
                      "nodeType": "YulIdentifier",
                      "src": "1848:12:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1848:32:1"
                  },
                  "variableNames": [
                    {
                      "name": "value1",
                      "nodeType": "YulIdentifier",
                      "src": "1838:6:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_decode_tuple_t_uint256t_uint256",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "1683:9:1",
                "type": ""
              },
              {
                "name": "dataEnd",
                "nodeType": "YulTypedName",
                "src": "1694:7:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "value0",
                "nodeType": "YulTypedName",
                "src": "1706:6:1",
                "type": ""
              },
              {
                "name": "value1",
                "nodeType": "YulTypedName",
                "src": "1714:6:1",
                "type": ""
              }
            ],
            "src": "1638:248:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "1923:95:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "1940:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "arguments": [
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1947:3:1",
                            "type": "",
                            "value": "224"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "1952:10:1",
                            "type": "",
                            "value": "0x4e487b71"
                          }
                        ],
                        "functionName": {
                          "name": "shl",
                          "nodeType": "YulIdentifier",
                          "src": "1943:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "1943:20:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "1933:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1933:31:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1933:31:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "1980:1:1",
                        "type": "",
                        "value": "4"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "1983:4:1",
                        "type": "",
                        "value": "0x41"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "1973:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1973:15:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1973:15:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "2004:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "2007:4:1",
                        "type": "",
                        "value": "0x24"
                      }
                    ],
                    "functionName": {
                      "name": "revert",
                      "nodeType": "YulIdentifier",
                      "src": "1997:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "1997:15:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "1997:15:1"
                }
              ]
            },
            "name": "panic_error_0x41",
            "nodeType": "YulFunctionDefinition",
            "src": "1891:127:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "2120:903:1",
              "statements": [
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "2166:16:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2175:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2178:1:1",
                              "type": "",
                              "value": "0"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "2168:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "2168:12:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "2168:12:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "dataEnd",
                            "nodeType": "YulIdentifier",
                            "src": "2141:7:1"
                          },
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "2150:9:1"
                          }
                        ],
                        "functionName": {
                          "name": "sub",
                          "nodeType": "YulIdentifier",
                          "src": "2137:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2137:23:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "2162:2:1",
                        "type": "",
                        "value": "64"
                      }
                    ],
                    "functionName": {
                      "name": "slt",
                      "nodeType": "YulIdentifier",
                      "src": "2133:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2133:32:1"
                  },
                  "nodeType": "YulIf",
                  "src": "2130:52:1"
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "2191:37:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "2218:9:1"
                      }
                    ],
                    "functionName": {
                      "name": "calldataload",
                      "nodeType": "YulIdentifier",
                      "src": "2205:12:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2205:23:1"
                  },
                  "variables": [
                    {
                      "name": "offset",
                      "nodeType": "YulTypedName",
                      "src": "2195:6:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "2237:28:1",
                  "value": {
                    "kind": "number",
                    "nodeType": "YulLiteral",
                    "src": "2247:18:1",
                    "type": "",
                    "value": "0xffffffffffffffff"
                  },
                  "variables": [
                    {
                      "name": "_1",
                      "nodeType": "YulTypedName",
                      "src": "2241:2:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "2292:16:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2301:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2304:1:1",
                              "type": "",
                              "value": "0"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "2294:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "2294:12:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "2294:12:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "offset",
                        "nodeType": "YulIdentifier",
                        "src": "2280:6:1"
                      },
                      {
                        "name": "_1",
                        "nodeType": "YulIdentifier",
                        "src": "2288:2:1"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "2277:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2277:14:1"
                  },
                  "nodeType": "YulIf",
                  "src": "2274:34:1"
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "2317:32:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "2331:9:1"
                      },
                      {
                        "name": "offset",
                        "nodeType": "YulIdentifier",
                        "src": "2342:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "2327:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2327:22:1"
                  },
                  "variables": [
                    {
                      "name": "_2",
                      "nodeType": "YulTypedName",
                      "src": "2321:2:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "2397:16:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2406:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2409:1:1",
                              "type": "",
                              "value": "0"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "2399:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "2399:12:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "2399:12:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "arguments": [
                              {
                                "name": "_2",
                                "nodeType": "YulIdentifier",
                                "src": "2376:2:1"
                              },
                              {
                                "kind": "number",
                                "nodeType": "YulLiteral",
                                "src": "2380:4:1",
                                "type": "",
                                "value": "0x1f"
                              }
                            ],
                            "functionName": {
                              "name": "add",
                              "nodeType": "YulIdentifier",
                              "src": "2372:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "2372:13:1"
                          },
                          {
                            "name": "dataEnd",
                            "nodeType": "YulIdentifier",
                            "src": "2387:7:1"
                          }
                        ],
                        "functionName": {
                          "name": "slt",
                          "nodeType": "YulIdentifier",
                          "src": "2368:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2368:27:1"
                      }
                    ],
                    "functionName": {
                      "name": "iszero",
                      "nodeType": "YulIdentifier",
                      "src": "2361:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2361:35:1"
                  },
                  "nodeType": "YulIf",
                  "src": "2358:55:1"
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "2422:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "_2",
                        "nodeType": "YulIdentifier",
                        "src": "2445:2:1"
                      }
                    ],
                    "functionName": {
                      "name": "calldataload",
                      "nodeType": "YulIdentifier",
                      "src": "2432:12:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2432:16:1"
                  },
                  "variables": [
                    {
                      "name": "_3",
                      "nodeType": "YulTypedName",
                      "src": "2426:2:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "2471:22:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [],
                          "functionName": {
                            "name": "panic_error_0x41",
                            "nodeType": "YulIdentifier",
                            "src": "2473:16:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "2473:18:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "2473:18:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "_3",
                        "nodeType": "YulIdentifier",
                        "src": "2463:2:1"
                      },
                      {
                        "name": "_1",
                        "nodeType": "YulIdentifier",
                        "src": "2467:2:1"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "2460:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2460:10:1"
                  },
                  "nodeType": "YulIf",
                  "src": "2457:36:1"
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "2502:17:1",
                  "value": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "2516:2:1",
                        "type": "",
                        "value": "31"
                      }
                    ],
                    "functionName": {
                      "name": "not",
                      "nodeType": "YulIdentifier",
                      "src": "2512:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2512:7:1"
                  },
                  "variables": [
                    {
                      "name": "_4",
                      "nodeType": "YulTypedName",
                      "src": "2506:2:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "2528:23:1",
                  "value": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "2548:2:1",
                        "type": "",
                        "value": "64"
                      }
                    ],
                    "functionName": {
                      "name": "mload",
                      "nodeType": "YulIdentifier",
                      "src": "2542:5:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2542:9:1"
                  },
                  "variables": [
                    {
                      "name": "memPtr",
                      "nodeType": "YulTypedName",
                      "src": "2532:6:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "2560:71:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "memPtr",
                        "nodeType": "YulIdentifier",
                        "src": "2582:6:1"
                      },
                      {
                        "arguments": [
                          {
                            "arguments": [
                              {
                                "arguments": [
                                  {
                                    "arguments": [
                                      {
                                        "name": "_3",
                                        "nodeType": "YulIdentifier",
                                        "src": "2606:2:1"
                                      },
                                      {
                                        "kind": "number",
                                        "nodeType": "YulLiteral",
                                        "src": "2610:4:1",
                                        "type": "",
                                        "value": "0x1f"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "add",
                                      "nodeType": "YulIdentifier",
                                      "src": "2602:3:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "2602:13:1"
                                  },
                                  {
                                    "name": "_4",
                                    "nodeType": "YulIdentifier",
                                    "src": "2617:2:1"
                                  }
                                ],
                                "functionName": {
                                  "name": "and",
                                  "nodeType": "YulIdentifier",
                                  "src": "2598:3:1"
                                },
                                "nodeType": "YulFunctionCall",
                                "src": "2598:22:1"
                              },
                              {
                                "kind": "number",
                                "nodeType": "YulLiteral",
                                "src": "2622:2:1",
                                "type": "",
                                "value": "63"
                              }
                            ],
                            "functionName": {
                              "name": "add",
                              "nodeType": "YulIdentifier",
                              "src": "2594:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "2594:31:1"
                          },
                          {
                            "name": "_4",
                            "nodeType": "YulIdentifier",
                            "src": "2627:2:1"
                          }
                        ],
                        "functionName": {
                          "name": "and",
                          "nodeType": "YulIdentifier",
                          "src": "2590:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2590:40:1"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "2578:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2578:53:1"
                  },
                  "variables": [
                    {
                      "name": "newFreePtr",
                      "nodeType": "YulTypedName",
                      "src": "2564:10:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "2690:22:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [],
                          "functionName": {
                            "name": "panic_error_0x41",
                            "nodeType": "YulIdentifier",
                            "src": "2692:16:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "2692:18:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "2692:18:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "newFreePtr",
                            "nodeType": "YulIdentifier",
                            "src": "2649:10:1"
                          },
                          {
                            "name": "_1",
                            "nodeType": "YulIdentifier",
                            "src": "2661:2:1"
                          }
                        ],
                        "functionName": {
                          "name": "gt",
                          "nodeType": "YulIdentifier",
                          "src": "2646:2:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2646:18:1"
                      },
                      {
                        "arguments": [
                          {
                            "name": "newFreePtr",
                            "nodeType": "YulIdentifier",
                            "src": "2669:10:1"
                          },
                          {
                            "name": "memPtr",
                            "nodeType": "YulIdentifier",
                            "src": "2681:6:1"
                          }
                        ],
                        "functionName": {
                          "name": "lt",
                          "nodeType": "YulIdentifier",
                          "src": "2666:2:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2666:22:1"
                      }
                    ],
                    "functionName": {
                      "name": "or",
                      "nodeType": "YulIdentifier",
                      "src": "2643:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2643:46:1"
                  },
                  "nodeType": "YulIf",
                  "src": "2640:72:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "2728:2:1",
                        "type": "",
                        "value": "64"
                      },
                      {
                        "name": "newFreePtr",
                        "nodeType": "YulIdentifier",
                        "src": "2732:10:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "2721:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2721:22:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "2721:22:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "memPtr",
                        "nodeType": "YulIdentifier",
                        "src": "2759:6:1"
                      },
                      {
                        "name": "_3",
                        "nodeType": "YulIdentifier",
                        "src": "2767:2:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "2752:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2752:18:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "2752:18:1"
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "2818:16:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2827:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "2830:1:1",
                              "type": "",
                              "value": "0"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "2820:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "2820:12:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "2820:12:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "arguments": [
                              {
                                "name": "_2",
                                "nodeType": "YulIdentifier",
                                "src": "2793:2:1"
                              },
                              {
                                "name": "_3",
                                "nodeType": "YulIdentifier",
                                "src": "2797:2:1"
                              }
                            ],
                            "functionName": {
                              "name": "add",
                              "nodeType": "YulIdentifier",
                              "src": "2789:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "2789:11:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "2802:4:1",
                            "type": "",
                            "value": "0x20"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "2785:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2785:22:1"
                      },
                      {
                        "name": "dataEnd",
                        "nodeType": "YulIdentifier",
                        "src": "2809:7:1"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "2782:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2782:35:1"
                  },
                  "nodeType": "YulIf",
                  "src": "2779:55:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "memPtr",
                            "nodeType": "YulIdentifier",
                            "src": "2860:6:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "2868:4:1",
                            "type": "",
                            "value": "0x20"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "2856:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2856:17:1"
                      },
                      {
                        "arguments": [
                          {
                            "name": "_2",
                            "nodeType": "YulIdentifier",
                            "src": "2879:2:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "2883:4:1",
                            "type": "",
                            "value": "0x20"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "2875:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2875:13:1"
                      },
                      {
                        "name": "_3",
                        "nodeType": "YulIdentifier",
                        "src": "2890:2:1"
                      }
                    ],
                    "functionName": {
                      "name": "calldatacopy",
                      "nodeType": "YulIdentifier",
                      "src": "2843:12:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2843:50:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "2843:50:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "arguments": [
                              {
                                "name": "memPtr",
                                "nodeType": "YulIdentifier",
                                "src": "2917:6:1"
                              },
                              {
                                "name": "_3",
                                "nodeType": "YulIdentifier",
                                "src": "2925:2:1"
                              }
                            ],
                            "functionName": {
                              "name": "add",
                              "nodeType": "YulIdentifier",
                              "src": "2913:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "2913:15:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "2930:4:1",
                            "type": "",
                            "value": "0x20"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "2909:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2909:26:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "2937:1:1",
                        "type": "",
                        "value": "0"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "2902:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2902:37:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "2902:37:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "2948:16:1",
                  "value": {
                    "name": "memPtr",
                    "nodeType": "YulIdentifier",
                    "src": "2958:6:1"
                  },
                  "variableNames": [
                    {
                      "name": "value0",
                      "nodeType": "YulIdentifier",
                      "src": "2948:6:1"
                    }
                  ]
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "2973:44:1",
                  "value": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "3000:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "3011:4:1",
                            "type": "",
                            "value": "0x20"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "2996:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "2996:20:1"
                      }
                    ],
                    "functionName": {
                      "name": "calldataload",
                      "nodeType": "YulIdentifier",
                      "src": "2983:12:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "2983:34:1"
                  },
                  "variableNames": [
                    {
                      "name": "value1",
                      "nodeType": "YulIdentifier",
                      "src": "2973:6:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_decode_tuple_t_string_memory_ptrt_uint256",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "2078:9:1",
                "type": ""
              },
              {
                "name": "dataEnd",
                "nodeType": "YulTypedName",
                "src": "2089:7:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "value0",
                "nodeType": "YulTypedName",
                "src": "2101:6:1",
                "type": ""
              },
              {
                "name": "value1",
                "nodeType": "YulTypedName",
                "src": "2109:6:1",
                "type": ""
              }
            ],
            "src": "2023:1000:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "3202:169:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "3219:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "3230:2:1",
                        "type": "",
                        "value": "32"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "3212:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3212:21:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "3212:21:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "3253:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "3264:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "3249:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "3249:18:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "3269:2:1",
                        "type": "",
                        "value": "19"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "3242:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3242:30:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "3242:30:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "3292:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "3303:2:1",
                            "type": "",
                            "value": "64"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "3288:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "3288:18:1"
                      },
                      {
                        "hexValue": "4974656d20646f6573206e6f74206578697374",
                        "kind": "string",
                        "nodeType": "YulLiteral",
                        "src": "3308:21:1",
                        "type": "",
                        "value": "Item does not exist"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "3281:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3281:49:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "3281:49:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "3339:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "3351:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "3362:2:1",
                        "type": "",
                        "value": "96"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "3347:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3347:18:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "3339:4:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_encode_tuple_t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907__to_t_string_memory_ptr__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "3179:9:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "3193:4:1",
                "type": ""
              }
            ],
            "src": "3028:343:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "3431:325:1",
              "statements": [
                {
                  "nodeType": "YulAssignment",
                  "src": "3441:22:1",
                  "value": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "3455:1:1",
                        "type": "",
                        "value": "1"
                      },
                      {
                        "name": "data",
                        "nodeType": "YulIdentifier",
                        "src": "3458:4:1"
                      }
                    ],
                    "functionName": {
                      "name": "shr",
                      "nodeType": "YulIdentifier",
                      "src": "3451:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3451:12:1"
                  },
                  "variableNames": [
                    {
                      "name": "length",
                      "nodeType": "YulIdentifier",
                      "src": "3441:6:1"
                    }
                  ]
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "3472:38:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "data",
                        "nodeType": "YulIdentifier",
                        "src": "3502:4:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "3508:1:1",
                        "type": "",
                        "value": "1"
                      }
                    ],
                    "functionName": {
                      "name": "and",
                      "nodeType": "YulIdentifier",
                      "src": "3498:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3498:12:1"
                  },
                  "variables": [
                    {
                      "name": "outOfPlaceEncoding",
                      "nodeType": "YulTypedName",
                      "src": "3476:18:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "3549:31:1",
                    "statements": [
                      {
                        "nodeType": "YulAssignment",
                        "src": "3551:27:1",
                        "value": {
                          "arguments": [
                            {
                              "name": "length",
                              "nodeType": "YulIdentifier",
                              "src": "3565:6:1"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "3573:4:1",
                              "type": "",
                              "value": "0x7f"
                            }
                          ],
                          "functionName": {
                            "name": "and",
                            "nodeType": "YulIdentifier",
                            "src": "3561:3:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "3561:17:1"
                        },
                        "variableNames": [
                          {
                            "name": "length",
                            "nodeType": "YulIdentifier",
                            "src": "3551:6:1"
                          }
                        ]
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "outOfPlaceEncoding",
                        "nodeType": "YulIdentifier",
                        "src": "3529:18:1"
                      }
                    ],
                    "functionName": {
                      "name": "iszero",
                      "nodeType": "YulIdentifier",
                      "src": "3522:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3522:26:1"
                  },
                  "nodeType": "YulIf",
                  "src": "3519:61:1"
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "3639:111:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "3660:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "arguments": [
                                {
                                  "kind": "number",
                                  "nodeType": "YulLiteral",
                                  "src": "3667:3:1",
                                  "type": "",
                                  "value": "224"
                                },
                                {
                                  "kind": "number",
                                  "nodeType": "YulLiteral",
                                  "src": "3672:10:1",
                                  "type": "",
                                  "value": "0x4e487b71"
                                }
                              ],
                              "functionName": {
                                "name": "shl",
                                "nodeType": "YulIdentifier",
                                "src": "3663:3:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "3663:20:1"
                            }
                          ],
                          "functionName": {
                            "name": "mstore",
                            "nodeType": "YulIdentifier",
                            "src": "3653:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "3653:31:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "3653:31:1"
                      },
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "3704:1:1",
                              "type": "",
                              "value": "4"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "3707:4:1",
                              "type": "",
                              "value": "0x22"
                            }
                          ],
                          "functionName": {
                            "name": "mstore",
                            "nodeType": "YulIdentifier",
                            "src": "3697:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "3697:15:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "3697:15:1"
                      },
                      {
                        "expression": {
                          "arguments": [
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "3732:1:1",
                              "type": "",
                              "value": "0"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "3735:4:1",
                              "type": "",
                              "value": "0x24"
                            }
                          ],
                          "functionName": {
                            "name": "revert",
                            "nodeType": "YulIdentifier",
                            "src": "3725:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "3725:15:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "3725:15:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "outOfPlaceEncoding",
                        "nodeType": "YulIdentifier",
                        "src": "3595:18:1"
                      },
                      {
                        "arguments": [
                          {
                            "name": "length",
                            "nodeType": "YulIdentifier",
                            "src": "3618:6:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "3626:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "lt",
                          "nodeType": "YulIdentifier",
                          "src": "3615:2:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "3615:14:1"
                      }
                    ],
                    "functionName": {
                      "name": "eq",
                      "nodeType": "YulIdentifier",
                      "src": "3592:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3592:38:1"
                  },
                  "nodeType": "YulIf",
                  "src": "3589:161:1"
                }
              ]
            },
            "name": "extract_byte_array_length",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "data",
                "nodeType": "YulTypedName",
                "src": "3411:4:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "length",
                "nodeType": "YulTypedName",
                "src": "3420:6:1",
                "type": ""
              }
            ],
            "src": "3376:380:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "3935:163:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "3952:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "3963:2:1",
                        "type": "",
                        "value": "32"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "3945:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3945:21:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "3945:21:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "3986:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "3997:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "3982:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "3982:18:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4002:2:1",
                        "type": "",
                        "value": "13"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "3975:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "3975:30:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "3975:30:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "4025:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "4036:2:1",
                            "type": "",
                            "value": "64"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "4021:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "4021:18:1"
                      },
                      {
                        "hexValue": "4e6f7420746865206f776e6572",
                        "kind": "string",
                        "nodeType": "YulLiteral",
                        "src": "4041:15:1",
                        "type": "",
                        "value": "Not the owner"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "4014:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4014:43:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4014:43:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "4066:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "4078:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4089:2:1",
                        "type": "",
                        "value": "96"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "4074:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4074:18:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "4066:4:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_encode_tuple_t_stringliteral_72ec00def0a4f647f10f2a5c1742fab7d53364130edc365182f3ccef5864f2a5__to_t_string_memory_ptr__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "3912:9:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "3926:4:1",
                "type": ""
              }
            ],
            "src": "3761:337:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "4277:163:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "4294:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4305:2:1",
                        "type": "",
                        "value": "32"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "4287:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4287:21:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4287:21:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "4328:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "4339:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "4324:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "4324:18:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4344:2:1",
                        "type": "",
                        "value": "13"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "4317:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4317:30:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4317:30:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "4367:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "4378:2:1",
                            "type": "",
                            "value": "64"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "4363:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "4363:18:1"
                      },
                      {
                        "hexValue": "4e616d65207265717569726564",
                        "kind": "string",
                        "nodeType": "YulLiteral",
                        "src": "4383:15:1",
                        "type": "",
                        "value": "Name required"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "4356:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4356:43:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4356:43:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "4408:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "4420:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4431:2:1",
                        "type": "",
                        "value": "96"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "4416:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4416:18:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "4408:4:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_encode_tuple_t_stringliteral_0ca4654eace15902b4e82a19f370261b03dd10ba7fb06250410b8747410c3ad5__to_t_string_memory_ptr__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "4254:9:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "4268:4:1",
                "type": ""
              }
            ],
            "src": "4103:337:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "4477:95:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4494:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "arguments": [
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "4501:3:1",
                            "type": "",
                            "value": "224"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "4506:10:1",
                            "type": "",
                            "value": "0x4e487b71"
                          }
                        ],
                        "functionName": {
                          "name": "shl",
                          "nodeType": "YulIdentifier",
                          "src": "4497:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "4497:20:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "4487:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4487:31:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4487:31:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4534:1:1",
                        "type": "",
                        "value": "4"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4537:4:1",
                        "type": "",
                        "value": "0x11"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "4527:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4527:15:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4527:15:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4558:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4561:4:1",
                        "type": "",
                        "value": "0x24"
                      }
                    ],
                    "functionName": {
                      "name": "revert",
                      "nodeType": "YulIdentifier",
                      "src": "4551:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4551:15:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4551:15:1"
                }
              ]
            },
            "name": "panic_error_0x11",
            "nodeType": "YulFunctionDefinition",
            "src": "4445:127:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "4625:77:1",
              "statements": [
                {
                  "nodeType": "YulAssignment",
                  "src": "4635:16:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "x",
                        "nodeType": "YulIdentifier",
                        "src": "4646:1:1"
                      },
                      {
                        "name": "y",
                        "nodeType": "YulIdentifier",
                        "src": "4649:1:1"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "4642:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4642:9:1"
                  },
                  "variableNames": [
                    {
                      "name": "sum",
                      "nodeType": "YulIdentifier",
                      "src": "4635:3:1"
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "4674:22:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [],
                          "functionName": {
                            "name": "panic_error_0x11",
                            "nodeType": "YulIdentifier",
                            "src": "4676:16:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "4676:18:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "4676:18:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "x",
                        "nodeType": "YulIdentifier",
                        "src": "4666:1:1"
                      },
                      {
                        "name": "sum",
                        "nodeType": "YulIdentifier",
                        "src": "4669:3:1"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "4663:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4663:10:1"
                  },
                  "nodeType": "YulIf",
                  "src": "4660:36:1"
                }
              ]
            },
            "name": "checked_add_t_uint256",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "x",
                "nodeType": "YulTypedName",
                "src": "4608:1:1",
                "type": ""
              },
              {
                "name": "y",
                "nodeType": "YulTypedName",
                "src": "4611:1:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "sum",
                "nodeType": "YulTypedName",
                "src": "4617:3:1",
                "type": ""
              }
            ],
            "src": "4577:125:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "4763:65:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4780:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "name": "ptr",
                        "nodeType": "YulIdentifier",
                        "src": "4783:3:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "4773:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4773:14:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "4773:14:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "4796:26:1",
                  "value": {
                    "arguments": [
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4814:1:1",
                        "type": "",
                        "value": "0"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4817:4:1",
                        "type": "",
                        "value": "0x20"
                      }
                    ],
                    "functionName": {
                      "name": "keccak256",
                      "nodeType": "YulIdentifier",
                      "src": "4804:9:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4804:18:1"
                  },
                  "variableNames": [
                    {
                      "name": "data",
                      "nodeType": "YulIdentifier",
                      "src": "4796:4:1"
                    }
                  ]
                }
              ]
            },
            "name": "array_dataslot_string_storage",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "ptr",
                "nodeType": "YulTypedName",
                "src": "4746:3:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "data",
                "nodeType": "YulTypedName",
                "src": "4754:4:1",
                "type": ""
              }
            ],
            "src": "4707:121:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "4914:464:1",
              "statements": [
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "4947:425:1",
                    "statements": [
                      {
                        "nodeType": "YulVariableDeclaration",
                        "src": "4961:11:1",
                        "value": {
                          "kind": "number",
                          "nodeType": "YulLiteral",
                          "src": "4971:1:1",
                          "type": "",
                          "value": "0"
                        },
                        "variables": [
                          {
                            "name": "_1",
                            "nodeType": "YulTypedName",
                            "src": "4965:2:1",
                            "type": ""
                          }
                        ]
                      },
                      {
                        "expression": {
                          "arguments": [
                            {
                              "name": "_1",
                              "nodeType": "YulIdentifier",
                              "src": "4992:2:1"
                            },
                            {
                              "name": "array",
                              "nodeType": "YulIdentifier",
                              "src": "4996:5:1"
                            }
                          ],
                          "functionName": {
                            "name": "mstore",
                            "nodeType": "YulIdentifier",
                            "src": "4985:6:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "4985:17:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "4985:17:1"
                      },
                      {
                        "nodeType": "YulVariableDeclaration",
                        "src": "5015:31:1",
                        "value": {
                          "arguments": [
                            {
                              "name": "_1",
                              "nodeType": "YulIdentifier",
                              "src": "5037:2:1"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "5041:4:1",
                              "type": "",
                              "value": "0x20"
                            }
                          ],
                          "functionName": {
                            "name": "keccak256",
                            "nodeType": "YulIdentifier",
                            "src": "5027:9:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "5027:19:1"
                        },
                        "variables": [
                          {
                            "name": "data",
                            "nodeType": "YulTypedName",
                            "src": "5019:4:1",
                            "type": ""
                          }
                        ]
                      },
                      {
                        "nodeType": "YulVariableDeclaration",
                        "src": "5059:57:1",
                        "value": {
                          "arguments": [
                            {
                              "name": "data",
                              "nodeType": "YulIdentifier",
                              "src": "5082:4:1"
                            },
                            {
                              "arguments": [
                                {
                                  "kind": "number",
                                  "nodeType": "YulLiteral",
                                  "src": "5092:1:1",
                                  "type": "",
                                  "value": "5"
                                },
                                {
                                  "arguments": [
                                    {
                                      "name": "startIndex",
                                      "nodeType": "YulIdentifier",
                                      "src": "5099:10:1"
                                    },
                                    {
                                      "kind": "number",
                                      "nodeType": "YulLiteral",
                                      "src": "5111:2:1",
                                      "type": "",
                                      "value": "31"
                                    }
                                  ],
                                  "functionName": {
                                    "name": "add",
                                    "nodeType": "YulIdentifier",
                                    "src": "5095:3:1"
                                  },
                                  "nodeType": "YulFunctionCall",
                                  "src": "5095:19:1"
                                }
                              ],
                              "functionName": {
                                "name": "shr",
                                "nodeType": "YulIdentifier",
                                "src": "5088:3:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "5088:27:1"
                            }
                          ],
                          "functionName": {
                            "name": "add",
                            "nodeType": "YulIdentifier",
                            "src": "5078:3:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "5078:38:1"
                        },
                        "variables": [
                          {
                            "name": "deleteStart",
                            "nodeType": "YulTypedName",
                            "src": "5063:11:1",
                            "type": ""
                          }
                        ]
                      },
                      {
                        "body": {
                          "nodeType": "YulBlock",
                          "src": "5153:23:1",
                          "statements": [
                            {
                              "nodeType": "YulAssignment",
                              "src": "5155:19:1",
                              "value": {
                                "name": "data",
                                "nodeType": "YulIdentifier",
                                "src": "5170:4:1"
                              },
                              "variableNames": [
                                {
                                  "name": "deleteStart",
                                  "nodeType": "YulIdentifier",
                                  "src": "5155:11:1"
                                }
                              ]
                            }
                          ]
                        },
                        "condition": {
                          "arguments": [
                            {
                              "name": "startIndex",
                              "nodeType": "YulIdentifier",
                              "src": "5135:10:1"
                            },
                            {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "5147:4:1",
                              "type": "",
                              "value": "0x20"
                            }
                          ],
                          "functionName": {
                            "name": "lt",
                            "nodeType": "YulIdentifier",
                            "src": "5132:2:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "5132:20:1"
                        },
                        "nodeType": "YulIf",
                        "src": "5129:47:1"
                      },
                      {
                        "nodeType": "YulVariableDeclaration",
                        "src": "5189:41:1",
                        "value": {
                          "arguments": [
                            {
                              "name": "data",
                              "nodeType": "YulIdentifier",
                              "src": "5203:4:1"
                            },
                            {
                              "arguments": [
                                {
                                  "kind": "number",
                                  "nodeType": "YulLiteral",
                                  "src": "5213:1:1",
                                  "type": "",
                                  "value": "5"
                                },
                                {
                                  "arguments": [
                                    {
                                      "name": "len",
                                      "nodeType": "YulIdentifier",
                                      "src": "5220:3:1"
                                    },
                                    {
                                      "kind": "number",
                                      "nodeType": "YulLiteral",
                                      "src": "5225:2:1",
                                      "type": "",
                                      "value": "31"
                                    }
                                  ],
                                  "functionName": {
                                    "name": "add",
                                    "nodeType": "YulIdentifier",
                                    "src": "5216:3:1"
                                  },
                                  "nodeType": "YulFunctionCall",
                                  "src": "5216:12:1"
                                }
                              ],
                              "functionName": {
                                "name": "shr",
                                "nodeType": "YulIdentifier",
                                "src": "5209:3:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "5209:20:1"
                            }
                          ],
                          "functionName": {
                            "name": "add",
                            "nodeType": "YulIdentifier",
                            "src": "5199:3:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "5199:31:1"
                        },
                        "variables": [
                          {
                            "name": "_2",
                            "nodeType": "YulTypedName",
                            "src": "5193:2:1",
                            "type": ""
                          }
                        ]
                      },
                      {
                        "nodeType": "YulVariableDeclaration",
                        "src": "5243:24:1",
                        "value": {
                          "name": "deleteStart",
                          "nodeType": "YulIdentifier",
                          "src": "5256:11:1"
                        },
                        "variables": [
                          {
                            "name": "start",
                            "nodeType": "YulTypedName",
                            "src": "5247:5:1",
                            "type": ""
                          }
                        ]
                      },
                      {
                        "body": {
                          "nodeType": "YulBlock",
                          "src": "5341:21:1",
                          "statements": [
                            {
                              "expression": {
                                "arguments": [
                                  {
                                    "name": "start",
                                    "nodeType": "YulIdentifier",
                                    "src": "5350:5:1"
                                  },
                                  {
                                    "name": "_1",
                                    "nodeType": "YulIdentifier",
                                    "src": "5357:2:1"
                                  }
                                ],
                                "functionName": {
                                  "name": "sstore",
                                  "nodeType": "YulIdentifier",
                                  "src": "5343:6:1"
                                },
                                "nodeType": "YulFunctionCall",
                                "src": "5343:17:1"
                              },
                              "nodeType": "YulExpressionStatement",
                              "src": "5343:17:1"
                            }
                          ]
                        },
                        "condition": {
                          "arguments": [
                            {
                              "name": "start",
                              "nodeType": "YulIdentifier",
                              "src": "5291:5:1"
                            },
                            {
                              "name": "_2",
                              "nodeType": "YulIdentifier",
                              "src": "5298:2:1"
                            }
                          ],
                          "functionName": {
                            "name": "lt",
                            "nodeType": "YulIdentifier",
                            "src": "5288:2:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "5288:13:1"
                        },
                        "nodeType": "YulForLoop",
                        "post": {
                          "nodeType": "YulBlock",
                          "src": "5302:26:1",
                          "statements": [
                            {
                              "nodeType": "YulAssignment",
                              "src": "5304:22:1",
                              "value": {
                                "arguments": [
                                  {
                                    "name": "start",
                                    "nodeType": "YulIdentifier",
                                    "src": "5317:5:1"
                                  },
                                  {
                                    "kind": "number",
                                    "nodeType": "YulLiteral",
                                    "src": "5324:1:1",
                                    "type": "",
                                    "value": "1"
                                  }
                                ],
                                "functionName": {
                                  "name": "add",
                                  "nodeType": "YulIdentifier",
                                  "src": "5313:3:1"
                                },
                                "nodeType": "YulFunctionCall",
                                "src": "5313:13:1"
                              },
                              "variableNames": [
                                {
                                  "name": "start",
                                  "nodeType": "YulIdentifier",
                                  "src": "5304:5:1"
                                }
                              ]
                            }
                          ]
                        },
                        "pre": {
                          "nodeType": "YulBlock",
                          "src": "5284:3:1",
                          "statements": []
                        },
                        "src": "5280:82:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "len",
                        "nodeType": "YulIdentifier",
                        "src": "4930:3:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "4935:2:1",
                        "type": "",
                        "value": "31"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "4927:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "4927:11:1"
                  },
                  "nodeType": "YulIf",
                  "src": "4924:448:1"
                }
              ]
            },
            "name": "clean_up_bytearray_end_slots_string_storage",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "array",
                "nodeType": "YulTypedName",
                "src": "4886:5:1",
                "type": ""
              },
              {
                "name": "len",
                "nodeType": "YulTypedName",
                "src": "4893:3:1",
                "type": ""
              },
              {
                "name": "startIndex",
                "nodeType": "YulTypedName",
                "src": "4898:10:1",
                "type": ""
              }
            ],
            "src": "4833:545:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "5468:81:1",
              "statements": [
                {
                  "nodeType": "YulAssignment",
                  "src": "5478:65:1",
                  "value": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "data",
                            "nodeType": "YulIdentifier",
                            "src": "5493:4:1"
                          },
                          {
                            "arguments": [
                              {
                                "arguments": [
                                  {
                                    "arguments": [
                                      {
                                        "kind": "number",
                                        "nodeType": "YulLiteral",
                                        "src": "5511:1:1",
                                        "type": "",
                                        "value": "3"
                                      },
                                      {
                                        "name": "len",
                                        "nodeType": "YulIdentifier",
                                        "src": "5514:3:1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "shl",
                                      "nodeType": "YulIdentifier",
                                      "src": "5507:3:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "5507:11:1"
                                  },
                                  {
                                    "arguments": [
                                      {
                                        "kind": "number",
                                        "nodeType": "YulLiteral",
                                        "src": "5524:1:1",
                                        "type": "",
                                        "value": "0"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "not",
                                      "nodeType": "YulIdentifier",
                                      "src": "5520:3:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "5520:6:1"
                                  }
                                ],
                                "functionName": {
                                  "name": "shr",
                                  "nodeType": "YulIdentifier",
                                  "src": "5503:3:1"
                                },
                                "nodeType": "YulFunctionCall",
                                "src": "5503:24:1"
                              }
                            ],
                            "functionName": {
                              "name": "not",
                              "nodeType": "YulIdentifier",
                              "src": "5499:3:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "5499:29:1"
                          }
                        ],
                        "functionName": {
                          "name": "and",
                          "nodeType": "YulIdentifier",
                          "src": "5489:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "5489:40:1"
                      },
                      {
                        "arguments": [
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "5535:1:1",
                            "type": "",
                            "value": "1"
                          },
                          {
                            "name": "len",
                            "nodeType": "YulIdentifier",
                            "src": "5538:3:1"
                          }
                        ],
                        "functionName": {
                          "name": "shl",
                          "nodeType": "YulIdentifier",
                          "src": "5531:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "5531:11:1"
                      }
                    ],
                    "functionName": {
                      "name": "or",
                      "nodeType": "YulIdentifier",
                      "src": "5486:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "5486:57:1"
                  },
                  "variableNames": [
                    {
                      "name": "used",
                      "nodeType": "YulIdentifier",
                      "src": "5478:4:1"
                    }
                  ]
                }
              ]
            },
            "name": "extract_used_part_and_set_length_of_short_byte_array",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "data",
                "nodeType": "YulTypedName",
                "src": "5445:4:1",
                "type": ""
              },
              {
                "name": "len",
                "nodeType": "YulTypedName",
                "src": "5451:3:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "used",
                "nodeType": "YulTypedName",
                "src": "5459:4:1",
                "type": ""
              }
            ],
            "src": "5383:166:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "5650:1256:1",
              "statements": [
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "5660:24:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "src",
                        "nodeType": "YulIdentifier",
                        "src": "5680:3:1"
                      }
                    ],
                    "functionName": {
                      "name": "mload",
                      "nodeType": "YulIdentifier",
                      "src": "5674:5:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "5674:10:1"
                  },
                  "variables": [
                    {
                      "name": "newLen",
                      "nodeType": "YulTypedName",
                      "src": "5664:6:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "5727:22:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [],
                          "functionName": {
                            "name": "panic_error_0x41",
                            "nodeType": "YulIdentifier",
                            "src": "5729:16:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "5729:18:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "5729:18:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "newLen",
                        "nodeType": "YulIdentifier",
                        "src": "5699:6:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "5707:18:1",
                        "type": "",
                        "value": "0xffffffffffffffff"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "5696:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "5696:30:1"
                  },
                  "nodeType": "YulIf",
                  "src": "5693:56:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "slot",
                        "nodeType": "YulIdentifier",
                        "src": "5802:4:1"
                      },
                      {
                        "arguments": [
                          {
                            "arguments": [
                              {
                                "name": "slot",
                                "nodeType": "YulIdentifier",
                                "src": "5840:4:1"
                              }
                            ],
                            "functionName": {
                              "name": "sload",
                              "nodeType": "YulIdentifier",
                              "src": "5834:5:1"
                            },
                            "nodeType": "YulFunctionCall",
                            "src": "5834:11:1"
                          }
                        ],
                        "functionName": {
                          "name": "extract_byte_array_length",
                          "nodeType": "YulIdentifier",
                          "src": "5808:25:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "5808:38:1"
                      },
                      {
                        "name": "newLen",
                        "nodeType": "YulIdentifier",
                        "src": "5848:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "clean_up_bytearray_end_slots_string_storage",
                      "nodeType": "YulIdentifier",
                      "src": "5758:43:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "5758:97:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "5758:97:1"
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "5864:18:1",
                  "value": {
                    "kind": "number",
                    "nodeType": "YulLiteral",
                    "src": "5881:1:1",
                    "type": "",
                    "value": "0"
                  },
                  "variables": [
                    {
                      "name": "srcOffset",
                      "nodeType": "YulTypedName",
                      "src": "5868:9:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "nodeType": "YulVariableDeclaration",
                  "src": "5891:23:1",
                  "value": {
                    "kind": "number",
                    "nodeType": "YulLiteral",
                    "src": "5910:4:1",
                    "type": "",
                    "value": "0x20"
                  },
                  "variables": [
                    {
                      "name": "srcOffset_1",
                      "nodeType": "YulTypedName",
                      "src": "5895:11:1",
                      "type": ""
                    }
                  ]
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "5923:24:1",
                  "value": {
                    "name": "srcOffset_1",
                    "nodeType": "YulIdentifier",
                    "src": "5936:11:1"
                  },
                  "variableNames": [
                    {
                      "name": "srcOffset",
                      "nodeType": "YulIdentifier",
                      "src": "5923:9:1"
                    }
                  ]
                },
                {
                  "cases": [
                    {
                      "body": {
                        "nodeType": "YulBlock",
                        "src": "5993:656:1",
                        "statements": [
                          {
                            "nodeType": "YulVariableDeclaration",
                            "src": "6007:35:1",
                            "value": {
                              "arguments": [
                                {
                                  "name": "newLen",
                                  "nodeType": "YulIdentifier",
                                  "src": "6026:6:1"
                                },
                                {
                                  "arguments": [
                                    {
                                      "kind": "number",
                                      "nodeType": "YulLiteral",
                                      "src": "6038:2:1",
                                      "type": "",
                                      "value": "31"
                                    }
                                  ],
                                  "functionName": {
                                    "name": "not",
                                    "nodeType": "YulIdentifier",
                                    "src": "6034:3:1"
                                  },
                                  "nodeType": "YulFunctionCall",
                                  "src": "6034:7:1"
                                }
                              ],
                              "functionName": {
                                "name": "and",
                                "nodeType": "YulIdentifier",
                                "src": "6022:3:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "6022:20:1"
                            },
                            "variables": [
                              {
                                "name": "loopEnd",
                                "nodeType": "YulTypedName",
                                "src": "6011:7:1",
                                "type": ""
                              }
                            ]
                          },
                          {
                            "nodeType": "YulVariableDeclaration",
                            "src": "6055:49:1",
                            "value": {
                              "arguments": [
                                {
                                  "name": "slot",
                                  "nodeType": "YulIdentifier",
                                  "src": "6099:4:1"
                                }
                              ],
                              "functionName": {
                                "name": "array_dataslot_string_storage",
                                "nodeType": "YulIdentifier",
                                "src": "6069:29:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "6069:35:1"
                            },
                            "variables": [
                              {
                                "name": "dstPtr",
                                "nodeType": "YulTypedName",
                                "src": "6059:6:1",
                                "type": ""
                              }
                            ]
                          },
                          {
                            "nodeType": "YulVariableDeclaration",
                            "src": "6117:10:1",
                            "value": {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "6126:1:1",
                              "type": "",
                              "value": "0"
                            },
                            "variables": [
                              {
                                "name": "i",
                                "nodeType": "YulTypedName",
                                "src": "6121:1:1",
                                "type": ""
                              }
                            ]
                          },
                          {
                            "body": {
                              "nodeType": "YulBlock",
                              "src": "6204:172:1",
                              "statements": [
                                {
                                  "expression": {
                                    "arguments": [
                                      {
                                        "name": "dstPtr",
                                        "nodeType": "YulIdentifier",
                                        "src": "6229:6:1"
                                      },
                                      {
                                        "arguments": [
                                          {
                                            "arguments": [
                                              {
                                                "name": "src",
                                                "nodeType": "YulIdentifier",
                                                "src": "6247:3:1"
                                              },
                                              {
                                                "name": "srcOffset",
                                                "nodeType": "YulIdentifier",
                                                "src": "6252:9:1"
                                              }
                                            ],
                                            "functionName": {
                                              "name": "add",
                                              "nodeType": "YulIdentifier",
                                              "src": "6243:3:1"
                                            },
                                            "nodeType": "YulFunctionCall",
                                            "src": "6243:19:1"
                                          }
                                        ],
                                        "functionName": {
                                          "name": "mload",
                                          "nodeType": "YulIdentifier",
                                          "src": "6237:5:1"
                                        },
                                        "nodeType": "YulFunctionCall",
                                        "src": "6237:26:1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "sstore",
                                      "nodeType": "YulIdentifier",
                                      "src": "6222:6:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "6222:42:1"
                                  },
                                  "nodeType": "YulExpressionStatement",
                                  "src": "6222:42:1"
                                },
                                {
                                  "nodeType": "YulAssignment",
                                  "src": "6281:24:1",
                                  "value": {
                                    "arguments": [
                                      {
                                        "name": "dstPtr",
                                        "nodeType": "YulIdentifier",
                                        "src": "6295:6:1"
                                      },
                                      {
                                        "kind": "number",
                                        "nodeType": "YulLiteral",
                                        "src": "6303:1:1",
                                        "type": "",
                                        "value": "1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "add",
                                      "nodeType": "YulIdentifier",
                                      "src": "6291:3:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "6291:14:1"
                                  },
                                  "variableNames": [
                                    {
                                      "name": "dstPtr",
                                      "nodeType": "YulIdentifier",
                                      "src": "6281:6:1"
                                    }
                                  ]
                                },
                                {
                                  "nodeType": "YulAssignment",
                                  "src": "6322:40:1",
                                  "value": {
                                    "arguments": [
                                      {
                                        "name": "srcOffset",
                                        "nodeType": "YulIdentifier",
                                        "src": "6339:9:1"
                                      },
                                      {
                                        "name": "srcOffset_1",
                                        "nodeType": "YulIdentifier",
                                        "src": "6350:11:1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "add",
                                      "nodeType": "YulIdentifier",
                                      "src": "6335:3:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "6335:27:1"
                                  },
                                  "variableNames": [
                                    {
                                      "name": "srcOffset",
                                      "nodeType": "YulIdentifier",
                                      "src": "6322:9:1"
                                    }
                                  ]
                                }
                              ]
                            },
                            "condition": {
                              "arguments": [
                                {
                                  "name": "i",
                                  "nodeType": "YulIdentifier",
                                  "src": "6151:1:1"
                                },
                                {
                                  "name": "loopEnd",
                                  "nodeType": "YulIdentifier",
                                  "src": "6154:7:1"
                                }
                              ],
                              "functionName": {
                                "name": "lt",
                                "nodeType": "YulIdentifier",
                                "src": "6148:2:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "6148:14:1"
                            },
                            "nodeType": "YulForLoop",
                            "post": {
                              "nodeType": "YulBlock",
                              "src": "6163:28:1",
                              "statements": [
                                {
                                  "nodeType": "YulAssignment",
                                  "src": "6165:24:1",
                                  "value": {
                                    "arguments": [
                                      {
                                        "name": "i",
                                        "nodeType": "YulIdentifier",
                                        "src": "6174:1:1"
                                      },
                                      {
                                        "name": "srcOffset_1",
                                        "nodeType": "YulIdentifier",
                                        "src": "6177:11:1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "add",
                                      "nodeType": "YulIdentifier",
                                      "src": "6170:3:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "6170:19:1"
                                  },
                                  "variableNames": [
                                    {
                                      "name": "i",
                                      "nodeType": "YulIdentifier",
                                      "src": "6165:1:1"
                                    }
                                  ]
                                }
                              ]
                            },
                            "pre": {
                              "nodeType": "YulBlock",
                              "src": "6144:3:1",
                              "statements": []
                            },
                            "src": "6140:236:1"
                          },
                          {
                            "body": {
                              "nodeType": "YulBlock",
                              "src": "6424:166:1",
                              "statements": [
                                {
                                  "nodeType": "YulVariableDeclaration",
                                  "src": "6442:43:1",
                                  "value": {
                                    "arguments": [
                                      {
                                        "arguments": [
                                          {
                                            "name": "src",
                                            "nodeType": "YulIdentifier",
                                            "src": "6469:3:1"
                                          },
                                          {
                                            "name": "srcOffset",
                                            "nodeType": "YulIdentifier",
                                            "src": "6474:9:1"
                                          }
                                        ],
                                        "functionName": {
                                          "name": "add",
                                          "nodeType": "YulIdentifier",
                                          "src": "6465:3:1"
                                        },
                                        "nodeType": "YulFunctionCall",
                                        "src": "6465:19:1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "mload",
                                      "nodeType": "YulIdentifier",
                                      "src": "6459:5:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "6459:26:1"
                                  },
                                  "variables": [
                                    {
                                      "name": "lastValue",
                                      "nodeType": "YulTypedName",
                                      "src": "6446:9:1",
                                      "type": ""
                                    }
                                  ]
                                },
                                {
                                  "expression": {
                                    "arguments": [
                                      {
                                        "name": "dstPtr",
                                        "nodeType": "YulIdentifier",
                                        "src": "6509:6:1"
                                      },
                                      {
                                        "arguments": [
                                          {
                                            "name": "lastValue",
                                            "nodeType": "YulIdentifier",
                                            "src": "6521:9:1"
                                          },
                                          {
                                            "arguments": [
                                              {
                                                "arguments": [
                                                  {
                                                    "arguments": [
                                                      {
                                                        "arguments": [
                                                          {
                                                            "kind": "number",
                                                            "nodeType": "YulLiteral",
                                                            "src": "6548:1:1",
                                                            "type": "",
                                                            "value": "3"
                                                          },
                                                          {
                                                            "name": "newLen",
                                                            "nodeType": "YulIdentifier",
                                                            "src": "6551:6:1"
                                                          }
                                                        ],
                                                        "functionName": {
                                                          "name": "shl",
                                                          "nodeType": "YulIdentifier",
                                                          "src": "6544:3:1"
                                                        },
                                                        "nodeType": "YulFunctionCall",
                                                        "src": "6544:14:1"
                                                      },
                                                      {
                                                        "kind": "number",
                                                        "nodeType": "YulLiteral",
                                                        "src": "6560:3:1",
                                                        "type": "",
                                                        "value": "248"
                                                      }
                                                    ],
                                                    "functionName": {
                                                      "name": "and",
                                                      "nodeType": "YulIdentifier",
                                                      "src": "6540:3:1"
                                                    },
                                                    "nodeType": "YulFunctionCall",
                                                    "src": "6540:24:1"
                                                  },
                                                  {
                                                    "arguments": [
                                                      {
                                                        "kind": "number",
                                                        "nodeType": "YulLiteral",
                                                        "src": "6570:1:1",
                                                        "type": "",
                                                        "value": "0"
                                                      }
                                                    ],
                                                    "functionName": {
                                                      "name": "not",
                                                      "nodeType": "YulIdentifier",
                                                      "src": "6566:3:1"
                                                    },
                                                    "nodeType": "YulFunctionCall",
                                                    "src": "6566:6:1"
                                                  }
                                                ],
                                                "functionName": {
                                                  "name": "shr",
                                                  "nodeType": "YulIdentifier",
                                                  "src": "6536:3:1"
                                                },
                                                "nodeType": "YulFunctionCall",
                                                "src": "6536:37:1"
                                              }
                                            ],
                                            "functionName": {
                                              "name": "not",
                                              "nodeType": "YulIdentifier",
                                              "src": "6532:3:1"
                                            },
                                            "nodeType": "YulFunctionCall",
                                            "src": "6532:42:1"
                                          }
                                        ],
                                        "functionName": {
                                          "name": "and",
                                          "nodeType": "YulIdentifier",
                                          "src": "6517:3:1"
                                        },
                                        "nodeType": "YulFunctionCall",
                                        "src": "6517:58:1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "sstore",
                                      "nodeType": "YulIdentifier",
                                      "src": "6502:6:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "6502:74:1"
                                  },
                                  "nodeType": "YulExpressionStatement",
                                  "src": "6502:74:1"
                                }
                              ]
                            },
                            "condition": {
                              "arguments": [
                                {
                                  "name": "loopEnd",
                                  "nodeType": "YulIdentifier",
                                  "src": "6395:7:1"
                                },
                                {
                                  "name": "newLen",
                                  "nodeType": "YulIdentifier",
                                  "src": "6404:6:1"
                                }
                              ],
                              "functionName": {
                                "name": "lt",
                                "nodeType": "YulIdentifier",
                                "src": "6392:2:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "6392:19:1"
                            },
                            "nodeType": "YulIf",
                            "src": "6389:201:1"
                          },
                          {
                            "expression": {
                              "arguments": [
                                {
                                  "name": "slot",
                                  "nodeType": "YulIdentifier",
                                  "src": "6610:4:1"
                                },
                                {
                                  "arguments": [
                                    {
                                      "arguments": [
                                        {
                                          "kind": "number",
                                          "nodeType": "YulLiteral",
                                          "src": "6624:1:1",
                                          "type": "",
                                          "value": "1"
                                        },
                                        {
                                          "name": "newLen",
                                          "nodeType": "YulIdentifier",
                                          "src": "6627:6:1"
                                        }
                                      ],
                                      "functionName": {
                                        "name": "shl",
                                        "nodeType": "YulIdentifier",
                                        "src": "6620:3:1"
                                      },
                                      "nodeType": "YulFunctionCall",
                                      "src": "6620:14:1"
                                    },
                                    {
                                      "kind": "number",
                                      "nodeType": "YulLiteral",
                                      "src": "6636:1:1",
                                      "type": "",
                                      "value": "1"
                                    }
                                  ],
                                  "functionName": {
                                    "name": "add",
                                    "nodeType": "YulIdentifier",
                                    "src": "6616:3:1"
                                  },
                                  "nodeType": "YulFunctionCall",
                                  "src": "6616:22:1"
                                }
                              ],
                              "functionName": {
                                "name": "sstore",
                                "nodeType": "YulIdentifier",
                                "src": "6603:6:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "6603:36:1"
                            },
                            "nodeType": "YulExpressionStatement",
                            "src": "6603:36:1"
                          }
                        ]
                      },
                      "nodeType": "YulCase",
                      "src": "5986:663:1",
                      "value": {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "5991:1:1",
                        "type": "",
                        "value": "1"
                      }
                    },
                    {
                      "body": {
                        "nodeType": "YulBlock",
                        "src": "6666:234:1",
                        "statements": [
                          {
                            "nodeType": "YulVariableDeclaration",
                            "src": "6680:14:1",
                            "value": {
                              "kind": "number",
                              "nodeType": "YulLiteral",
                              "src": "6693:1:1",
                              "type": "",
                              "value": "0"
                            },
                            "variables": [
                              {
                                "name": "value",
                                "nodeType": "YulTypedName",
                                "src": "6684:5:1",
                                "type": ""
                              }
                            ]
                          },
                          {
                            "body": {
                              "nodeType": "YulBlock",
                              "src": "6729:67:1",
                              "statements": [
                                {
                                  "nodeType": "YulAssignment",
                                  "src": "6747:35:1",
                                  "value": {
                                    "arguments": [
                                      {
                                        "arguments": [
                                          {
                                            "name": "src",
                                            "nodeType": "YulIdentifier",
                                            "src": "6766:3:1"
                                          },
                                          {
                                            "name": "srcOffset",
                                            "nodeType": "YulIdentifier",
                                            "src": "6771:9:1"
                                          }
                                        ],
                                        "functionName": {
                                          "name": "add",
                                          "nodeType": "YulIdentifier",
                                          "src": "6762:3:1"
                                        },
                                        "nodeType": "YulFunctionCall",
                                        "src": "6762:19:1"
                                      }
                                    ],
                                    "functionName": {
                                      "name": "mload",
                                      "nodeType": "YulIdentifier",
                                      "src": "6756:5:1"
                                    },
                                    "nodeType": "YulFunctionCall",
                                    "src": "6756:26:1"
                                  },
                                  "variableNames": [
                                    {
                                      "name": "value",
                                      "nodeType": "YulIdentifier",
                                      "src": "6747:5:1"
                                    }
                                  ]
                                }
                              ]
                            },
                            "condition": {
                              "name": "newLen",
                              "nodeType": "YulIdentifier",
                              "src": "6710:6:1"
                            },
                            "nodeType": "YulIf",
                            "src": "6707:89:1"
                          },
                          {
                            "expression": {
                              "arguments": [
                                {
                                  "name": "slot",
                                  "nodeType": "YulIdentifier",
                                  "src": "6816:4:1"
                                },
                                {
                                  "arguments": [
                                    {
                                      "name": "value",
                                      "nodeType": "YulIdentifier",
                                      "src": "6875:5:1"
                                    },
                                    {
                                      "name": "newLen",
                                      "nodeType": "YulIdentifier",
                                      "src": "6882:6:1"
                                    }
                                  ],
                                  "functionName": {
                                    "name": "extract_used_part_and_set_length_of_short_byte_array",
                                    "nodeType": "YulIdentifier",
                                    "src": "6822:52:1"
                                  },
                                  "nodeType": "YulFunctionCall",
                                  "src": "6822:67:1"
                                }
                              ],
                              "functionName": {
                                "name": "sstore",
                                "nodeType": "YulIdentifier",
                                "src": "6809:6:1"
                              },
                              "nodeType": "YulFunctionCall",
                              "src": "6809:81:1"
                            },
                            "nodeType": "YulExpressionStatement",
                            "src": "6809:81:1"
                          }
                        ]
                      },
                      "nodeType": "YulCase",
                      "src": "6658:242:1",
                      "value": "default"
                    }
                  ],
                  "expression": {
                    "arguments": [
                      {
                        "name": "newLen",
                        "nodeType": "YulIdentifier",
                        "src": "5966:6:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "5974:2:1",
                        "type": "",
                        "value": "31"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "5963:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "5963:14:1"
                  },
                  "nodeType": "YulSwitch",
                  "src": "5956:944:1"
                }
              ]
            },
            "name": "copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "slot",
                "nodeType": "YulTypedName",
                "src": "5635:4:1",
                "type": ""
              },
              {
                "name": "src",
                "nodeType": "YulTypedName",
                "src": "5641:3:1",
                "type": ""
              }
            ],
            "src": "5554:1352:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "7060:142:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "7077:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "7088:2:1",
                        "type": "",
                        "value": "64"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7070:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7070:21:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7070:21:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "7100:53:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "value0",
                        "nodeType": "YulIdentifier",
                        "src": "7126:6:1"
                      },
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "7138:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "7149:2:1",
                            "type": "",
                            "value": "64"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "7134:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "7134:18:1"
                      }
                    ],
                    "functionName": {
                      "name": "abi_encode_string",
                      "nodeType": "YulIdentifier",
                      "src": "7108:17:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7108:45:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "7100:4:1"
                    }
                  ]
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "7173:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "7184:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "7169:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "7169:18:1"
                      },
                      {
                        "name": "value1",
                        "nodeType": "YulIdentifier",
                        "src": "7189:6:1"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7162:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7162:34:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7162:34:1"
                }
              ]
            },
            "name": "abi_encode_tuple_t_string_memory_ptr_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "7021:9:1",
                "type": ""
              },
              {
                "name": "value1",
                "nodeType": "YulTypedName",
                "src": "7032:6:1",
                "type": ""
              },
              {
                "name": "value0",
                "nodeType": "YulTypedName",
                "src": "7040:6:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "7051:4:1",
                "type": ""
              }
            ],
            "src": "6911:291:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "7381:167:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "7398:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "7409:2:1",
                        "type": "",
                        "value": "32"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7391:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7391:21:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7391:21:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "7432:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "7443:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "7428:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "7428:18:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "7448:2:1",
                        "type": "",
                        "value": "17"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7421:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7421:30:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7421:30:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "7471:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "7482:2:1",
                            "type": "",
                            "value": "64"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "7467:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "7467:18:1"
                      },
                      {
                        "hexValue": "4974656d206e6f7420666f722073616c65",
                        "kind": "string",
                        "nodeType": "YulLiteral",
                        "src": "7487:19:1",
                        "type": "",
                        "value": "Item not for sale"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7460:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7460:47:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7460:47:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "7516:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "7528:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "7539:2:1",
                        "type": "",
                        "value": "96"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "7524:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7524:18:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "7516:4:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_encode_tuple_t_stringliteral_df16b7349c0253f6fb9f4484e9e154e83d51fd52f2fb4123d23e27c0f5581980__to_t_string_memory_ptr__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "7358:9:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "7372:4:1",
                "type": ""
              }
            ],
            "src": "7207:341:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "7727:171:1",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "7744:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "7755:2:1",
                        "type": "",
                        "value": "32"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7737:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7737:21:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7737:21:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "7778:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "7789:2:1",
                            "type": "",
                            "value": "32"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "7774:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "7774:18:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "7794:2:1",
                        "type": "",
                        "value": "21"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7767:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7767:30:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7767:30:1"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "arguments": [
                          {
                            "name": "headStart",
                            "nodeType": "YulIdentifier",
                            "src": "7817:9:1"
                          },
                          {
                            "kind": "number",
                            "nodeType": "YulLiteral",
                            "src": "7828:2:1",
                            "type": "",
                            "value": "64"
                          }
                        ],
                        "functionName": {
                          "name": "add",
                          "nodeType": "YulIdentifier",
                          "src": "7813:3:1"
                        },
                        "nodeType": "YulFunctionCall",
                        "src": "7813:18:1"
                      },
                      {
                        "hexValue": "4e6f7420656e6f7567682045746865722073656e74",
                        "kind": "string",
                        "nodeType": "YulLiteral",
                        "src": "7833:23:1",
                        "type": "",
                        "value": "Not enough Ether sent"
                      }
                    ],
                    "functionName": {
                      "name": "mstore",
                      "nodeType": "YulIdentifier",
                      "src": "7806:6:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7806:51:1"
                  },
                  "nodeType": "YulExpressionStatement",
                  "src": "7806:51:1"
                },
                {
                  "nodeType": "YulAssignment",
                  "src": "7866:26:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "headStart",
                        "nodeType": "YulIdentifier",
                        "src": "7878:9:1"
                      },
                      {
                        "kind": "number",
                        "nodeType": "YulLiteral",
                        "src": "7889:2:1",
                        "type": "",
                        "value": "96"
                      }
                    ],
                    "functionName": {
                      "name": "add",
                      "nodeType": "YulIdentifier",
                      "src": "7874:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7874:18:1"
                  },
                  "variableNames": [
                    {
                      "name": "tail",
                      "nodeType": "YulIdentifier",
                      "src": "7866:4:1"
                    }
                  ]
                }
              ]
            },
            "name": "abi_encode_tuple_t_stringliteral_1c6427ba804cdc03d4ea49311785a6c33377d5d12d933da48fa5349576bce28b__to_t_string_memory_ptr__fromStack_reversed",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "headStart",
                "nodeType": "YulTypedName",
                "src": "7704:9:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "tail",
                "nodeType": "YulTypedName",
                "src": "7718:4:1",
                "type": ""
              }
            ],
            "src": "7553:345:1"
          },
          {
            "body": {
              "nodeType": "YulBlock",
              "src": "7952:79:1",
              "statements": [
                {
                  "nodeType": "YulAssignment",
                  "src": "7962:17:1",
                  "value": {
                    "arguments": [
                      {
                        "name": "x",
                        "nodeType": "YulIdentifier",
                        "src": "7974:1:1"
                      },
                      {
                        "name": "y",
                        "nodeType": "YulIdentifier",
                        "src": "7977:1:1"
                      }
                    ],
                    "functionName": {
                      "name": "sub",
                      "nodeType": "YulIdentifier",
                      "src": "7970:3:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7970:9:1"
                  },
                  "variableNames": [
                    {
                      "name": "diff",
                      "nodeType": "YulIdentifier",
                      "src": "7962:4:1"
                    }
                  ]
                },
                {
                  "body": {
                    "nodeType": "YulBlock",
                    "src": "8003:22:1",
                    "statements": [
                      {
                        "expression": {
                          "arguments": [],
                          "functionName": {
                            "name": "panic_error_0x11",
                            "nodeType": "YulIdentifier",
                            "src": "8005:16:1"
                          },
                          "nodeType": "YulFunctionCall",
                          "src": "8005:18:1"
                        },
                        "nodeType": "YulExpressionStatement",
                        "src": "8005:18:1"
                      }
                    ]
                  },
                  "condition": {
                    "arguments": [
                      {
                        "name": "diff",
                        "nodeType": "YulIdentifier",
                        "src": "7994:4:1"
                      },
                      {
                        "name": "x",
                        "nodeType": "YulIdentifier",
                        "src": "8000:1:1"
                      }
                    ],
                    "functionName": {
                      "name": "gt",
                      "nodeType": "YulIdentifier",
                      "src": "7991:2:1"
                    },
                    "nodeType": "YulFunctionCall",
                    "src": "7991:11:1"
                  },
                  "nodeType": "YulIf",
                  "src": "7988:37:1"
                }
              ]
            },
            "name": "checked_sub_t_uint256",
            "nodeType": "YulFunctionDefinition",
            "parameters": [
              {
                "name": "x",
                "nodeType": "YulTypedName",
                "src": "7934:1:1",
                "type": ""
              },
              {
                "name": "y",
                "nodeType": "YulTypedName",
                "src": "7937:1:1",
                "type": ""
              }
            ],
            "returnVariables": [
              {
                "name": "diff",
                "nodeType": "YulTypedName",
                "src": "7943:4:1",
                "type": ""
              }
            ],
            "src": "7903:128:1"
          }
        ]
      },
      "contents": "{\n    { }\n    function abi_encode_tuple_t_uint256__to_t_uint256__fromStack_reversed(headStart, value0) -> tail\n    {\n        tail := add(headStart, 32)\n        mstore(headStart, value0)\n    }\n    function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0\n    {\n        if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }\n        value0 := calldataload(headStart)\n    }\n    function abi_encode_string(value, pos) -> end\n    {\n        let length := mload(value)\n        mstore(pos, length)\n        let i := 0\n        for { } lt(i, length) { i := add(i, 0x20) }\n        {\n            let _1 := 0x20\n            mstore(add(add(pos, i), _1), mload(add(add(value, i), _1)))\n        }\n        mstore(add(add(pos, length), 0x20), 0)\n        end := add(add(pos, and(add(length, 31), not(31))), 0x20)\n    }\n    function panic_error_0x21()\n    {\n        mstore(0, shl(224, 0x4e487b71))\n        mstore(4, 0x21)\n        revert(0, 0x24)\n    }\n    function abi_encode_tuple_t_uint256_t_string_memory_ptr_t_uint256_t_address_t_enum$_Status_$5__to_t_uint256_t_string_memory_ptr_t_uint256_t_address_t_uint8__fromStack_reversed(headStart, value4, value3, value2, value1, value0) -> tail\n    {\n        mstore(headStart, value0)\n        mstore(add(headStart, 32), 160)\n        tail := abi_encode_string(value1, add(headStart, 160))\n        mstore(add(headStart, 64), value2)\n        mstore(add(headStart, 96), and(value3, sub(shl(160, 1), 1)))\n        if iszero(lt(value4, 3))\n        {\n            mstore(0, shl(224, 0x4e487b71))\n            mstore(4, 0x21)\n            revert(0, 0x24)\n        }\n        mstore(add(headStart, 128), value4)\n    }\n    function abi_decode_tuple_t_uint256t_uint256(headStart, dataEnd) -> value0, value1\n    {\n        if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }\n        value0 := calldataload(headStart)\n        value1 := calldataload(add(headStart, 32))\n    }\n    function panic_error_0x41()\n    {\n        mstore(0, shl(224, 0x4e487b71))\n        mstore(4, 0x41)\n        revert(0, 0x24)\n    }\n    function abi_decode_tuple_t_string_memory_ptrt_uint256(headStart, dataEnd) -> value0, value1\n    {\n        if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }\n        let offset := calldataload(headStart)\n        let _1 := 0xffffffffffffffff\n        if gt(offset, _1) { revert(0, 0) }\n        let _2 := add(headStart, offset)\n        if iszero(slt(add(_2, 0x1f), dataEnd)) { revert(0, 0) }\n        let _3 := calldataload(_2)\n        if gt(_3, _1) { panic_error_0x41() }\n        let _4 := not(31)\n        let memPtr := mload(64)\n        let newFreePtr := add(memPtr, and(add(and(add(_3, 0x1f), _4), 63), _4))\n        if or(gt(newFreePtr, _1), lt(newFreePtr, memPtr)) { panic_error_0x41() }\n        mstore(64, newFreePtr)\n        mstore(memPtr, _3)\n        if gt(add(add(_2, _3), 0x20), dataEnd) { revert(0, 0) }\n        calldatacopy(add(memPtr, 0x20), add(_2, 0x20), _3)\n        mstore(add(add(memPtr, _3), 0x20), 0)\n        value0 := memPtr\n        value1 := calldataload(add(headStart, 0x20))\n    }\n    function abi_encode_tuple_t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907__to_t_string_memory_ptr__fromStack_reversed(headStart) -> tail\n    {\n        mstore(headStart, 32)\n        mstore(add(headStart, 32), 19)\n        mstore(add(headStart, 64), \"Item does not exist\")\n        tail := add(headStart, 96)\n    }\n    function extract_byte_array_length(data) -> length\n    {\n        length := shr(1, data)\n        let outOfPlaceEncoding := and(data, 1)\n        if iszero(outOfPlaceEncoding) { length := and(length, 0x7f) }\n        if eq(outOfPlaceEncoding, lt(length, 32))\n        {\n            mstore(0, shl(224, 0x4e487b71))\n            mstore(4, 0x22)\n            revert(0, 0x24)\n        }\n    }\n    function abi_encode_tuple_t_stringliteral_72ec00def0a4f647f10f2a5c1742fab7d53364130edc365182f3ccef5864f2a5__to_t_string_memory_ptr__fromStack_reversed(headStart) -> tail\n    {\n        mstore(headStart, 32)\n        mstore(add(headStart, 32), 13)\n        mstore(add(headStart, 64), \"Not the owner\")\n        tail := add(headStart, 96)\n    }\n    function abi_encode_tuple_t_stringliteral_0ca4654eace15902b4e82a19f370261b03dd10ba7fb06250410b8747410c3ad5__to_t_string_memory_ptr__fromStack_reversed(headStart) -> tail\n    {\n        mstore(headStart, 32)\n        mstore(add(headStart, 32), 13)\n        mstore(add(headStart, 64), \"Name required\")\n        tail := add(headStart, 96)\n    }\n    function panic_error_0x11()\n    {\n        mstore(0, shl(224, 0x4e487b71))\n        mstore(4, 0x11)\n        revert(0, 0x24)\n    }\n    function checked_add_t_uint256(x, y) -> sum\n    {\n        sum := add(x, y)\n        if gt(x, sum) { panic_error_0x11() }\n    }\n    function array_dataslot_string_storage(ptr) -> data\n    {\n        mstore(0, ptr)\n        data := keccak256(0, 0x20)\n    }\n    function clean_up_bytearray_end_slots_string_storage(array, len, startIndex)\n    {\n        if gt(len, 31)\n        {\n            let _1 := 0\n            mstore(_1, array)\n            let data := keccak256(_1, 0x20)\n            let deleteStart := add(data, shr(5, add(startIndex, 31)))\n            if lt(startIndex, 0x20) { deleteStart := data }\n            let _2 := add(data, shr(5, add(len, 31)))\n            let start := deleteStart\n            for { } lt(start, _2) { start := add(start, 1) }\n            { sstore(start, _1) }\n        }\n    }\n    function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used\n    {\n        used := or(and(data, not(shr(shl(3, len), not(0)))), shl(1, len))\n    }\n    function copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, src)\n    {\n        let newLen := mload(src)\n        if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }\n        clean_up_bytearray_end_slots_string_storage(slot, extract_byte_array_length(sload(slot)), newLen)\n        let srcOffset := 0\n        let srcOffset_1 := 0x20\n        srcOffset := srcOffset_1\n        switch gt(newLen, 31)\n        case 1 {\n            let loopEnd := and(newLen, not(31))\n            let dstPtr := array_dataslot_string_storage(slot)\n            let i := 0\n            for { } lt(i, loopEnd) { i := add(i, srcOffset_1) }\n            {\n                sstore(dstPtr, mload(add(src, srcOffset)))\n                dstPtr := add(dstPtr, 1)\n                srcOffset := add(srcOffset, srcOffset_1)\n            }\n            if lt(loopEnd, newLen)\n            {\n                let lastValue := mload(add(src, srcOffset))\n                sstore(dstPtr, and(lastValue, not(shr(and(shl(3, newLen), 248), not(0)))))\n            }\n            sstore(slot, add(shl(1, newLen), 1))\n        }\n        default {\n            let value := 0\n            if newLen\n            {\n                value := mload(add(src, srcOffset))\n            }\n            sstore(slot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))\n        }\n    }\n    function abi_encode_tuple_t_string_memory_ptr_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack_reversed(headStart, value1, value0) -> tail\n    {\n        mstore(headStart, 64)\n        tail := abi_encode_string(value0, add(headStart, 64))\n        mstore(add(headStart, 32), value1)\n    }\n    function abi_encode_tuple_t_stringliteral_df16b7349c0253f6fb9f4484e9e154e83d51fd52f2fb4123d23e27c0f5581980__to_t_string_memory_ptr__fromStack_reversed(headStart) -> tail\n    {\n        mstore(headStart, 32)\n        mstore(add(headStart, 32), 17)\n        mstore(add(headStart, 64), \"Item not for sale\")\n        tail := add(headStart, 96)\n    }\n    function abi_encode_tuple_t_stringliteral_1c6427ba804cdc03d4ea49311785a6c33377d5d12d933da48fa5349576bce28b__to_t_string_memory_ptr__fromStack_reversed(headStart) -> tail\n    {\n        mstore(headStart, 32)\n        mstore(add(headStart, 32), 21)\n        mstore(add(headStart, 64), \"Not enough Ether sent\")\n        tail := add(headStart, 96)\n    }\n    function checked_sub_t_uint256(x, y) -> diff\n    {\n        diff := sub(x, y)\n        if gt(diff, x) { panic_error_0x11() }\n    }\n}",
      "id": 1,
      "language": "Yul",
      "name": "#utility.yul"
    }
  ],
  "sourceMap": "61:2143:0:-:0;;;;;;;;;;;;;;;;;;;",
  "deployedSourceMap": "61:2143:0:-:0;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;288:20;;;;;;;;;;;;;;;;;;;160:25:1;;;148:2;133:18;288:20:0;;;;;;;;2118:83;;;;;;;;;;-1:-1:-1;2161:4:0;2185:8;2118:83;;1849:261;;;;;;;;;;-1:-1:-1;1849:261:0;;;;;:::i;:::-;;:::i;:::-;;;;;;;;;;;:::i;877:328::-;;;;;;;;;;-1:-1:-1;877:328:0;;;;;:::i;:::-;;:::i;:::-;;566:303;;;;;;;;;;-1:-1:-1;566:303:0;;;;;:::i;:::-;;:::i;315:34::-;;;;;;;;;;-1:-1:-1;315:34:0;;;;;:::i;:::-;;:::i;1213:628::-;;;;;;:::i;:::-;;:::i;1849:261::-;1898:4;1971:11;;;:5;:11;;;;;2001:6;;1904:13;;1898:4;;;;;;2001:11;;1993:43;;;;-1:-1:-1;;;1993:43:0;;;;;;;:::i;:::-;;;;;;;;;2055:6;;2072:8;;;;2082;;;;2063:7;;;2047:55;;2063:7;;2072:8;-1:-1:-1;;;;;2082:8:0;;;-1:-1:-1;;;2092:9:0;;;;;;2063:7;;2047:55;;;:::i;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;1849:261;;;;;;;:::o;877:328::-;939:17;959:11;;;:5;:11;;;;;989:8;;959:11;;989:13;981:45;;;;-1:-1:-1;;;981:45:0;;;;;;;:::i;:::-;1045:10;;;;-1:-1:-1;;;;;1045:10:0;1059;1045:24;1037:50;;;;-1:-1:-1;;;1037:50:0;;3963:2:1;1037:50:0;;;3945:21:1;4002:2;3982:18;;;3975:30;-1:-1:-1;;;4021:18:1;;;4014:43;4074:18;;1037:50:0;3761:337:1;1037:50:0;1098:10;;;:19;;;1128:11;;;:28;;-1:-1:-1;;;;1128:28:0;-1:-1:-1;;;1128:28:0;;;1172:25;;160::1;;;1184:4:0;;1172:25;;148:2:1;133:18;1172:25:0;;;;;;;928:277;877:328;;:::o;566:303::-;668:1;652:5;646:19;:23;638:49;;;;-1:-1:-1;;;638:49:0;;4305:2:1;638:49:0;;;4287:21:1;4344:2;4324:18;;;4317:30;-1:-1:-1;;;4363:18:1;;;4356:43;4416:18;;638:49:0;4103:337:1;638:49:0;710:1;698:8;;:13;;;;;;;:::i;:::-;;;;-1:-1:-1;;740:57:0;;;;;;;;-1:-1:-1;745:8:0;;740:57;;;;;;;;;;;;;;770:10;740:57;;;;;;;;;722:15;728:8;;722:15;;:5;:15;;;;;;;;:75;;;;;;;;;;;;;;;;:::i;:::-;-1:-1:-1;722:75:0;;;;;;;;;;;;;;;;;;;;;-1:-1:-1;;;;;722:75:0;;;-1:-1:-1;;;;;;722:75:0;;;;;;;;;;;;;-1:-1:-1;;;;;;722:75:0;;;-1:-1:-1;;;722:75:0;;;;;;;;;;:::i;:::-;;;;;-1:-1:-1;;825:8:0;;813:48;;850:10;;-1:-1:-1;813:48:0;;;;835:5;;842:6;;813:48;:::i;:::-;;;;;;;;566:303;;:::o;315:34::-;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;-1:-1:-1;;;;315:34:0;;;;;;;;;;;;-1:-1:-1;;;;;315:34:0;;;-1:-1:-1;;;;315:34:0;;;;;:::o;1213:628::-;1267:17;1287:11;;;:5;:11;;;;;1317:8;;1287:11;;1317:13;1309:45;;;;-1:-1:-1;;;1309:45:0;;;;;;;:::i;:::-;1388:14;1373:11;;;;-1:-1:-1;;;1373:11:0;;;;:29;;;;;;;;:::i;:::-;;1365:59;;;;-1:-1:-1;;;1365:59:0;;7409:2:1;1365:59:0;;;7391:21:1;7448:2;7428:18;;;7421:30;-1:-1:-1;;;7467:18:1;;;7460:47;7524:18;;1365:59:0;7207:341:1;1365:59:0;1456:4;:10;;;1443:9;:23;;1435:57;;;;-1:-1:-1;;;1435:57:0;;7755:2:1;1435:57:0;;;7737:21:1;7794:2;7774:18;;;7767:30;-1:-1:-1;;;7813:18:1;;;7806:51;7874:18;;1435:57:0;7553:345:1;1435:57:0;1538:10;;;;;-1:-1:-1;;;;;;;;;1594:25:0;;-1:-1:-1;;;;1573:10:0;1594:25;;;;;;1608:11;1636:10;;;-1:-1:-1;;;;;1538:10:0;;;;1636:14;1632:47;;1668:10;;;;1652:27;;-1:-1:-1;;;;;1652:15:0;;;:27;;;;;;;;;1668:10;1652:15;:27;;;;;;;;;;;;;;;;;;;;;1632:47;1690:11;1716:4;:10;;;1704:9;:22;;;;:::i;:::-;1690:36;-1:-1:-1;1741:10:0;;1737:52;;1753:36;;1761:10;;1753:36;;;;;1782:6;;1753:36;;;;1782:6;1761:10;1753:36;;;;;;;;;;;;;;;;;;;;;1737:52;1807:26;;1822:10;;1816:4;;1807:26;;;;;1256:585;;;1213:628;:::o;196:180:1:-;255:6;308:2;296:9;287:7;283:23;279:32;276:52;;;324:1;321;314:12;276:52;-1:-1:-1;347:23:1;;196:180;-1:-1:-1;196:180:1:o;381:423::-;423:3;461:5;455:12;488:6;483:3;476:19;513:1;523:162;537:6;534:1;531:13;523:162;;;599:4;655:13;;;651:22;;645:29;627:11;;;623:20;;616:59;552:12;523:162;;;527:3;730:1;723:4;714:6;709:3;705:16;701:27;694:38;793:4;786:2;782:7;777:2;769:6;765:15;761:29;756:3;752:39;748:50;741:57;;;381:423;;;;:::o;809:127::-;870:10;865:3;861:20;858:1;851:31;901:4;898:1;891:15;925:4;922:1;915:15;941:692;1208:6;1197:9;1190:25;1251:3;1246:2;1235:9;1231:18;1224:31;1171:4;1272:46;1313:3;1302:9;1298:19;1290:6;1272:46;:::i;:::-;1349:2;1334:18;;1327:34;;;-1:-1:-1;;;;;1397:32:1;;1392:2;1377:18;;1370:60;1264:54;-1:-1:-1;1460:1:1;1449:13;;1439:144;;1505:10;1500:3;1496:20;1493:1;1486:31;1540:4;1537:1;1530:15;1568:4;1565:1;1558:15;1439:144;1620:6;1614:3;1603:9;1599:19;1592:35;941:692;;;;;;;;:::o;1638:248::-;1706:6;1714;1767:2;1755:9;1746:7;1742:23;1738:32;1735:52;;;1783:1;1780;1773:12;1735:52;-1:-1:-1;;1806:23:1;;;1876:2;1861:18;;;1848:32;;-1:-1:-1;1638:248:1:o;1891:127::-;1952:10;1947:3;1943:20;1940:1;1933:31;1983:4;1980:1;1973:15;2007:4;2004:1;1997:15;2023:1000;2101:6;2109;2162:2;2150:9;2141:7;2137:23;2133:32;2130:52;;;2178:1;2175;2168:12;2130:52;2218:9;2205:23;2247:18;2288:2;2280:6;2277:14;2274:34;;;2304:1;2301;2294:12;2274:34;2342:6;2331:9;2327:22;2317:32;;2387:7;2380:4;2376:2;2372:13;2368:27;2358:55;;2409:1;2406;2399:12;2358:55;2445:2;2432:16;2467:2;2463;2460:10;2457:36;;;2473:18;;:::i;:::-;2548:2;2542:9;2516:2;2602:13;;-1:-1:-1;;2598:22:1;;;2622:2;2594:31;2590:40;2578:53;;;2646:18;;;2666:22;;;2643:46;2640:72;;;2692:18;;:::i;:::-;2732:10;2728:2;2721:22;2767:2;2759:6;2752:18;2809:7;2802:4;2797:2;2793;2789:11;2785:22;2782:35;2779:55;;;2830:1;2827;2820:12;2779:55;2890:2;2883:4;2879:2;2875:13;2868:4;2860:6;2856:17;2843:50;2937:1;2930:4;2913:15;;;2909:26;;2902:37;2913:15;2996:20;;;;2983:34;;-1:-1:-1;;;;;;2023:1000:1:o;3028:343::-;3230:2;3212:21;;;3269:2;3249:18;;;3242:30;-1:-1:-1;;;3303:2:1;3288:18;;3281:49;3362:2;3347:18;;3028:343::o;3376:380::-;3455:1;3451:12;;;;3498;;;3519:61;;3573:4;3565:6;3561:17;3551:27;;3519:61;3626:2;3618:6;3615:14;3595:18;3592:38;3589:161;;3672:10;3667:3;3663:20;3660:1;3653:31;3707:4;3704:1;3697:15;3735:4;3732:1;3725:15;3589:161;;3376:380;;;:::o;4445:127::-;4506:10;4501:3;4497:20;4494:1;4487:31;4537:4;4534:1;4527:15;4561:4;4558:1;4551:15;4577:125;4642:9;;;4663:10;;;4660:36;;;4676:18;;:::i;:::-;4577:125;;;;:::o;4833:545::-;4935:2;4930:3;4927:11;4924:448;;;4971:1;4996:5;4992:2;4985:17;5041:4;5037:2;5027:19;5111:2;5099:10;5095:19;5092:1;5088:27;5082:4;5078:38;5147:4;5135:10;5132:20;5129:47;;;-1:-1:-1;5170:4:1;5129:47;5225:2;5220:3;5216:12;5213:1;5209:20;5203:4;5199:31;5189:41;;5280:82;5298:2;5291:5;5288:13;5280:82;;;5343:17;;;5324:1;5313:13;5280:82;;;5284:3;;;4924:448;4833:545;;;:::o;5554:1352::-;5680:3;5674:10;5707:18;5699:6;5696:30;5693:56;;;5729:18;;:::i;:::-;5758:97;5848:6;5808:38;5840:4;5834:11;5808:38;:::i;:::-;5802:4;5758:97;:::i;:::-;5910:4;;5974:2;5963:14;;5991:1;5986:663;;;;6693:1;6710:6;6707:89;;;-1:-1:-1;6762:19:1;;;6756:26;6707:89;-1:-1:-1;;5511:1:1;5507:11;;;5503:24;5499:29;5489:40;5535:1;5531:11;;;5486:57;6809:81;;5956:944;;5986:663;4780:1;4773:14;;;4817:4;4804:18;;-1:-1:-1;;6022:20:1;;;6140:236;6154:7;6151:1;6148:14;6140:236;;;6243:19;;;6237:26;6222:42;;6335:27;;;;6303:1;6291:14;;;;6170:19;;6140:236;;;6144:3;6404:6;6395:7;6392:19;6389:201;;;6465:19;;;6459:26;-1:-1:-1;;6548:1:1;6544:14;;;6560:3;6540:24;6536:37;6532:42;6517:58;6502:74;;6389:201;-1:-1:-1;;;;;6636:1:1;6620:14;;;6616:22;6603:36;;-1:-1:-1;5554:1352:1:o;6911:291::-;7088:2;7077:9;7070:21;7051:4;7108:45;7149:2;7138:9;7134:18;7126:6;7108:45;:::i;:::-;7100:53;;7189:6;7184:2;7173:9;7169:18;7162:34;6911:291;;;;;:::o;7903:128::-;7970:9;;;7991:11;;;7988:37;;;8005:18;;:::i",
  "source": "// SPDX-License-Identifier: MIT\r\npragma solidity ^0.8.19;\r\n\r\ncontract SupplyChain {\r\n    enum Status { Created, ForSale, Sold }\r\n\r\n    struct Item {\r\n        uint sku;\r\n        string name;\r\n        uint price;      // in wei\r\n        address owner;\r\n        Status status;\r\n    }\r\n\r\n    uint public skuCount;\r\n    mapping(uint => Item) public items;\r\n\r\n    event ItemCreated(uint indexed sku, string name, uint price, address indexed owner);\r\n    event ItemForSale(uint indexed sku, uint price);\r\n    event ItemSold(uint indexed sku, address indexed buyer);\r\n\r\n    function createItem(string memory _name, uint _price) public {\r\n        require(bytes(_name).length > 0, \"Name required\");\r\n        skuCount += 1;\r\n        items[skuCount] = Item(skuCount, _name, _price, msg.sender, Status.Created);\r\n        emit ItemCreated(skuCount, _name, _price, msg.sender);\r\n    }\r\n\r\n    function putForSale(uint _sku, uint _price) public {\r\n        Item storage item = items[_sku];\r\n        require(item.sku != 0, \"Item does not exist\");\r\n        require(item.owner == msg.sender, \"Not the owner\");\r\n        item.price = _price;\r\n        item.status = Status.ForSale;\r\n        emit ItemForSale(_sku, _price);\r\n    }\r\n\r\n    function buyItem(uint _sku) public payable {\r\n        Item storage item = items[_sku];\r\n        require(item.sku != 0, \"Item does not exist\");\r\n        require(item.status == Status.ForSale, \"Item not for sale\");\r\n        require(msg.value >= item.price, \"Not enough Ether sent\");\r\n\r\n        address payable seller = payable(item.owner);\r\n        item.owner = msg.sender;\r\n        item.status = Status.Sold;\r\n\r\n        if (item.price > 0) seller.transfer(item.price);\r\n        uint excess = msg.value - item.price;\r\n        if (excess > 0) payable(msg.sender).transfer(excess);\r\n\r\n        emit ItemSold(_sku, msg.sender);\r\n    }\r\n\r\n    function getItem(uint _sku) public view returns (uint, string memory, uint, address, Status) {\r\n        Item storage it = items[_sku];\r\n        require(it.sku != 0, \"Item does not exist\");\r\n        return (it.sku, it.name, it.price, it.owner, it.status);\r\n    }\r\n\r\n    function totalItems() public view returns (uint) {\r\n        return skuCount;\r\n    }\r\n}\r\n",
  "sourcePath": "C:\\Users\\ASUS\\Documents\\Pharma-supply-chain\\Blockchain\\contracts\\SupplyChain.sol",
  "ast": {
    "absolutePath": "project:/contracts/SupplyChain.sol",
    "exportedSymbols": {
      "SupplyChain": [
        294
      ]
    },
    "id": 295,
    "license": "MIT",
    "nodeType": "SourceUnit",
    "nodes": [
      {
        "id": 1,
        "literals": [
          "solidity",
          "^",
          "0.8",
          ".19"
        ],
        "nodeType": "PragmaDirective",
        "src": "33:24:0"
      },
      {
        "abstract": false,
        "baseContracts": [],
        "canonicalName": "SupplyChain",
        "contractDependencies": [],
        "contractKind": "contract",
        "fullyImplemented": true,
        "id": 294,
        "linearizedBaseContracts": [
          294
        ],
        "name": "SupplyChain",
        "nameLocation": "70:11:0",
        "nodeType": "ContractDefinition",
        "nodes": [
          {
            "canonicalName": "SupplyChain.Status",
            "id": 5,
            "members": [
              {
                "id": 2,
                "name": "Created",
                "nameLocation": "103:7:0",
                "nodeType": "EnumValue",
                "src": "103:7:0"
              },
              {
                "id": 3,
                "name": "ForSale",
                "nameLocation": "112:7:0",
                "nodeType": "EnumValue",
                "src": "112:7:0"
              },
              {
                "id": 4,
                "name": "Sold",
                "nameLocation": "121:4:0",
                "nodeType": "EnumValue",
                "src": "121:4:0"
              }
            ],
            "name": "Status",
            "nameLocation": "94:6:0",
            "nodeType": "EnumDefinition",
            "src": "89:38:0"
          },
          {
            "canonicalName": "SupplyChain.Item",
            "id": 17,
            "members": [
              {
                "constant": false,
                "id": 7,
                "mutability": "mutable",
                "name": "sku",
                "nameLocation": "163:3:0",
                "nodeType": "VariableDeclaration",
                "scope": 17,
                "src": "158:8:0",
                "stateVariable": false,
                "storageLocation": "default",
                "typeDescriptions": {
                  "typeIdentifier": "t_uint256",
                  "typeString": "uint256"
                },
                "typeName": {
                  "id": 6,
                  "name": "uint",
                  "nodeType": "ElementaryTypeName",
                  "src": "158:4:0",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  }
                },
                "visibility": "internal"
              },
              {
                "constant": false,
                "id": 9,
                "mutability": "mutable",
                "name": "name",
                "nameLocation": "184:4:0",
                "nodeType": "VariableDeclaration",
                "scope": 17,
                "src": "177:11:0",
                "stateVariable": false,
                "storageLocation": "default",
                "typeDescriptions": {
                  "typeIdentifier": "t_string_storage_ptr",
                  "typeString": "string"
                },
                "typeName": {
                  "id": 8,
                  "name": "string",
                  "nodeType": "ElementaryTypeName",
                  "src": "177:6:0",
                  "typeDescriptions": {
                    "typeIdentifier": "t_string_storage_ptr",
                    "typeString": "string"
                  }
                },
                "visibility": "internal"
              },
              {
                "constant": false,
                "id": 11,
                "mutability": "mutable",
                "name": "price",
                "nameLocation": "204:5:0",
                "nodeType": "VariableDeclaration",
                "scope": 17,
                "src": "199:10:0",
                "stateVariable": false,
                "storageLocation": "default",
                "typeDescriptions": {
                  "typeIdentifier": "t_uint256",
                  "typeString": "uint256"
                },
                "typeName": {
                  "id": 10,
                  "name": "uint",
                  "nodeType": "ElementaryTypeName",
                  "src": "199:4:0",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  }
                },
                "visibility": "internal"
              },
              {
                "constant": false,
                "id": 13,
                "mutability": "mutable",
                "name": "owner",
                "nameLocation": "243:5:0",
                "nodeType": "VariableDeclaration",
                "scope": 17,
                "src": "235:13:0",
                "stateVariable": false,
                "storageLocation": "default",
                "typeDescriptions": {
                  "typeIdentifier": "t_address",
                  "typeString": "address"
                },
                "typeName": {
                  "id": 12,
                  "name": "address",
                  "nodeType": "ElementaryTypeName",
                  "src": "235:7:0",
                  "stateMutability": "nonpayable",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  }
                },
                "visibility": "internal"
              },
              {
                "constant": false,
                "id": 16,
                "mutability": "mutable",
                "name": "status",
                "nameLocation": "266:6:0",
                "nodeType": "VariableDeclaration",
                "scope": 17,
                "src": "259:13:0",
                "stateVariable": false,
                "storageLocation": "default",
                "typeDescriptions": {
                  "typeIdentifier": "t_enum$_Status_$5",
                  "typeString": "enum SupplyChain.Status"
                },
                "typeName": {
                  "id": 15,
                  "nodeType": "UserDefinedTypeName",
                  "pathNode": {
                    "id": 14,
                    "name": "Status",
                    "nameLocations": [
                      "259:6:0"
                    ],
                    "nodeType": "IdentifierPath",
                    "referencedDeclaration": 5,
                    "src": "259:6:0"
                  },
                  "referencedDeclaration": 5,
                  "src": "259:6:0",
                  "typeDescriptions": {
                    "typeIdentifier": "t_enum$_Status_$5",
                    "typeString": "enum SupplyChain.Status"
                  }
                },
                "visibility": "internal"
              }
            ],
            "name": "Item",
            "nameLocation": "142:4:0",
            "nodeType": "StructDefinition",
            "scope": 294,
            "src": "135:145:0",
            "visibility": "public"
          },
          {
            "constant": false,
            "functionSelector": "22702473",
            "id": 19,
            "mutability": "mutable",
            "name": "skuCount",
            "nameLocation": "300:8:0",
            "nodeType": "VariableDeclaration",
            "scope": 294,
            "src": "288:20:0",
            "stateVariable": true,
            "storageLocation": "default",
            "typeDescriptions": {
              "typeIdentifier": "t_uint256",
              "typeString": "uint256"
            },
            "typeName": {
              "id": 18,
              "name": "uint",
              "nodeType": "ElementaryTypeName",
              "src": "288:4:0",
              "typeDescriptions": {
                "typeIdentifier": "t_uint256",
                "typeString": "uint256"
              }
            },
            "visibility": "public"
          },
          {
            "constant": false,
            "functionSelector": "bfb231d2",
            "id": 24,
            "mutability": "mutable",
            "name": "items",
            "nameLocation": "344:5:0",
            "nodeType": "VariableDeclaration",
            "scope": 294,
            "src": "315:34:0",
            "stateVariable": true,
            "storageLocation": "default",
            "typeDescriptions": {
              "typeIdentifier": "t_mapping$_t_uint256_$_t_struct$_Item_$17_storage_$",
              "typeString": "mapping(uint256 => struct SupplyChain.Item)"
            },
            "typeName": {
              "id": 23,
              "keyName": "",
              "keyNameLocation": "-1:-1:-1",
              "keyType": {
                "id": 20,
                "name": "uint",
                "nodeType": "ElementaryTypeName",
                "src": "323:4:0",
                "typeDescriptions": {
                  "typeIdentifier": "t_uint256",
                  "typeString": "uint256"
                }
              },
              "nodeType": "Mapping",
              "src": "315:21:0",
              "typeDescriptions": {
                "typeIdentifier": "t_mapping$_t_uint256_$_t_struct$_Item_$17_storage_$",
                "typeString": "mapping(uint256 => struct SupplyChain.Item)"
              },
              "valueName": "",
              "valueNameLocation": "-1:-1:-1",
              "valueType": {
                "id": 22,
                "nodeType": "UserDefinedTypeName",
                "pathNode": {
                  "id": 21,
                  "name": "Item",
                  "nameLocations": [
                    "331:4:0"
                  ],
                  "nodeType": "IdentifierPath",
                  "referencedDeclaration": 17,
                  "src": "331:4:0"
                },
                "referencedDeclaration": 17,
                "src": "331:4:0",
                "typeDescriptions": {
                  "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                  "typeString": "struct SupplyChain.Item"
                }
              }
            },
            "visibility": "public"
          },
          {
            "anonymous": false,
            "eventSelector": "4f7f943ede3f118d52f137992d1d5e5f5723aac6037c6b8814b8432f44ed05a1",
            "id": 34,
            "name": "ItemCreated",
            "nameLocation": "364:11:0",
            "nodeType": "EventDefinition",
            "parameters": {
              "id": 33,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 26,
                  "indexed": true,
                  "mutability": "mutable",
                  "name": "sku",
                  "nameLocation": "389:3:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 34,
                  "src": "376:16:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 25,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "376:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 28,
                  "indexed": false,
                  "mutability": "mutable",
                  "name": "name",
                  "nameLocation": "401:4:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 34,
                  "src": "394:11:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_string_memory_ptr",
                    "typeString": "string"
                  },
                  "typeName": {
                    "id": 27,
                    "name": "string",
                    "nodeType": "ElementaryTypeName",
                    "src": "394:6:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_string_storage_ptr",
                      "typeString": "string"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 30,
                  "indexed": false,
                  "mutability": "mutable",
                  "name": "price",
                  "nameLocation": "412:5:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 34,
                  "src": "407:10:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 29,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "407:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 32,
                  "indexed": true,
                  "mutability": "mutable",
                  "name": "owner",
                  "nameLocation": "435:5:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 34,
                  "src": "419:21:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  },
                  "typeName": {
                    "id": 31,
                    "name": "address",
                    "nodeType": "ElementaryTypeName",
                    "src": "419:7:0",
                    "stateMutability": "nonpayable",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "375:66:0"
            },
            "src": "358:84:0"
          },
          {
            "anonymous": false,
            "eventSelector": "5ac49d898f4c1239088b74e396a1a86348f8870dbcc2476a3385fd12b62940c8",
            "id": 40,
            "name": "ItemForSale",
            "nameLocation": "454:11:0",
            "nodeType": "EventDefinition",
            "parameters": {
              "id": 39,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 36,
                  "indexed": true,
                  "mutability": "mutable",
                  "name": "sku",
                  "nameLocation": "479:3:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 40,
                  "src": "466:16:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 35,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "466:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 38,
                  "indexed": false,
                  "mutability": "mutable",
                  "name": "price",
                  "nameLocation": "489:5:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 40,
                  "src": "484:10:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 37,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "484:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "465:30:0"
            },
            "src": "448:48:0"
          },
          {
            "anonymous": false,
            "eventSelector": "7de4035ced290be6d7724645d43bad448b5d8cc76743ff4da172c2d8e1caa0f5",
            "id": 46,
            "name": "ItemSold",
            "nameLocation": "508:8:0",
            "nodeType": "EventDefinition",
            "parameters": {
              "id": 45,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 42,
                  "indexed": true,
                  "mutability": "mutable",
                  "name": "sku",
                  "nameLocation": "530:3:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 46,
                  "src": "517:16:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 41,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "517:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 44,
                  "indexed": true,
                  "mutability": "mutable",
                  "name": "buyer",
                  "nameLocation": "551:5:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 46,
                  "src": "535:21:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  },
                  "typeName": {
                    "id": 43,
                    "name": "address",
                    "nodeType": "ElementaryTypeName",
                    "src": "535:7:0",
                    "stateMutability": "nonpayable",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "516:41:0"
            },
            "src": "502:56:0"
          },
          {
            "body": {
              "id": 90,
              "nodeType": "Block",
              "src": "627:242:0",
              "statements": [
                {
                  "expression": {
                    "arguments": [
                      {
                        "commonType": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        "id": 60,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "expression": {
                            "arguments": [
                              {
                                "id": 56,
                                "name": "_name",
                                "nodeType": "Identifier",
                                "overloadedDeclarations": [],
                                "referencedDeclaration": 48,
                                "src": "652:5:0",
                                "typeDescriptions": {
                                  "typeIdentifier": "t_string_memory_ptr",
                                  "typeString": "string memory"
                                }
                              }
                            ],
                            "expression": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_string_memory_ptr",
                                  "typeString": "string memory"
                                }
                              ],
                              "id": 55,
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "lValueRequested": false,
                              "nodeType": "ElementaryTypeNameExpression",
                              "src": "646:5:0",
                              "typeDescriptions": {
                                "typeIdentifier": "t_type$_t_bytes_storage_ptr_$",
                                "typeString": "type(bytes storage pointer)"
                              },
                              "typeName": {
                                "id": 54,
                                "name": "bytes",
                                "nodeType": "ElementaryTypeName",
                                "src": "646:5:0",
                                "typeDescriptions": {}
                              }
                            },
                            "id": 57,
                            "isConstant": false,
                            "isLValue": false,
                            "isPure": false,
                            "kind": "typeConversion",
                            "lValueRequested": false,
                            "nameLocations": [],
                            "names": [],
                            "nodeType": "FunctionCall",
                            "src": "646:12:0",
                            "tryCall": false,
                            "typeDescriptions": {
                              "typeIdentifier": "t_bytes_memory_ptr",
                              "typeString": "bytes memory"
                            }
                          },
                          "id": 58,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "659:6:0",
                          "memberName": "length",
                          "nodeType": "MemberAccess",
                          "src": "646:19:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": ">",
                        "rightExpression": {
                          "hexValue": "30",
                          "id": 59,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "kind": "number",
                          "lValueRequested": false,
                          "nodeType": "Literal",
                          "src": "668:1:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_rational_0_by_1",
                            "typeString": "int_const 0"
                          },
                          "value": "0"
                        },
                        "src": "646:23:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "hexValue": "4e616d65207265717569726564",
                        "id": 61,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "671:15:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_0ca4654eace15902b4e82a19f370261b03dd10ba7fb06250410b8747410c3ad5",
                          "typeString": "literal_string \"Name required\""
                        },
                        "value": "Name required"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_0ca4654eace15902b4e82a19f370261b03dd10ba7fb06250410b8747410c3ad5",
                          "typeString": "literal_string \"Name required\""
                        }
                      ],
                      "id": 53,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        4294967278,
                        4294967278
                      ],
                      "referencedDeclaration": 4294967278,
                      "src": "638:7:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 62,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "638:49:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 63,
                  "nodeType": "ExpressionStatement",
                  "src": "638:49:0"
                },
                {
                  "expression": {
                    "id": 66,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "id": 64,
                      "name": "skuCount",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 19,
                      "src": "698:8:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "+=",
                    "rightHandSide": {
                      "hexValue": "31",
                      "id": 65,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "kind": "number",
                      "lValueRequested": false,
                      "nodeType": "Literal",
                      "src": "710:1:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_rational_1_by_1",
                        "typeString": "int_const 1"
                      },
                      "value": "1"
                    },
                    "src": "698:13:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "id": 67,
                  "nodeType": "ExpressionStatement",
                  "src": "698:13:0"
                },
                {
                  "expression": {
                    "id": 80,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "baseExpression": {
                        "id": 68,
                        "name": "items",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 24,
                        "src": "722:5:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_mapping$_t_uint256_$_t_struct$_Item_$17_storage_$",
                          "typeString": "mapping(uint256 => struct SupplyChain.Item storage ref)"
                        }
                      },
                      "id": 70,
                      "indexExpression": {
                        "id": 69,
                        "name": "skuCount",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 19,
                        "src": "728:8:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": true,
                      "nodeType": "IndexAccess",
                      "src": "722:15:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Item_$17_storage",
                        "typeString": "struct SupplyChain.Item storage ref"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "=",
                    "rightHandSide": {
                      "arguments": [
                        {
                          "id": 72,
                          "name": "skuCount",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 19,
                          "src": "745:8:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        {
                          "id": 73,
                          "name": "_name",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 48,
                          "src": "755:5:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_string_memory_ptr",
                            "typeString": "string memory"
                          }
                        },
                        {
                          "id": 74,
                          "name": "_price",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 50,
                          "src": "762:6:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        {
                          "expression": {
                            "id": 75,
                            "name": "msg",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 4294967281,
                            "src": "770:3:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_magic_message",
                              "typeString": "msg"
                            }
                          },
                          "id": 76,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "774:6:0",
                          "memberName": "sender",
                          "nodeType": "MemberAccess",
                          "src": "770:10:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_address",
                            "typeString": "address"
                          }
                        },
                        {
                          "expression": {
                            "id": 77,
                            "name": "Status",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 5,
                            "src": "782:6:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_type$_t_enum$_Status_$5_$",
                              "typeString": "type(enum SupplyChain.Status)"
                            }
                          },
                          "id": 78,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "lValueRequested": false,
                          "memberLocation": "789:7:0",
                          "memberName": "Created",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 2,
                          "src": "782:14:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_enum$_Status_$5",
                            "typeString": "enum SupplyChain.Status"
                          }
                        }
                      ],
                      "expression": {
                        "argumentTypes": [
                          {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          },
                          {
                            "typeIdentifier": "t_string_memory_ptr",
                            "typeString": "string memory"
                          },
                          {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          },
                          {
                            "typeIdentifier": "t_address",
                            "typeString": "address"
                          },
                          {
                            "typeIdentifier": "t_enum$_Status_$5",
                            "typeString": "enum SupplyChain.Status"
                          }
                        ],
                        "id": 71,
                        "name": "Item",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 17,
                        "src": "740:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_type$_t_struct$_Item_$17_storage_ptr_$",
                          "typeString": "type(struct SupplyChain.Item storage pointer)"
                        }
                      },
                      "id": 79,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "kind": "structConstructorCall",
                      "lValueRequested": false,
                      "nameLocations": [],
                      "names": [],
                      "nodeType": "FunctionCall",
                      "src": "740:57:0",
                      "tryCall": false,
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Item_$17_memory_ptr",
                        "typeString": "struct SupplyChain.Item memory"
                      }
                    },
                    "src": "722:75:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_struct$_Item_$17_storage",
                      "typeString": "struct SupplyChain.Item storage ref"
                    }
                  },
                  "id": 81,
                  "nodeType": "ExpressionStatement",
                  "src": "722:75:0"
                },
                {
                  "eventCall": {
                    "arguments": [
                      {
                        "id": 83,
                        "name": "skuCount",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 19,
                        "src": "825:8:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "id": 84,
                        "name": "_name",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 48,
                        "src": "835:5:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_string_memory_ptr",
                          "typeString": "string memory"
                        }
                      },
                      {
                        "id": 85,
                        "name": "_price",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 50,
                        "src": "842:6:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "expression": {
                          "id": 86,
                          "name": "msg",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 4294967281,
                          "src": "850:3:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_magic_message",
                            "typeString": "msg"
                          }
                        },
                        "id": 87,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "854:6:0",
                        "memberName": "sender",
                        "nodeType": "MemberAccess",
                        "src": "850:10:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        {
                          "typeIdentifier": "t_string_memory_ptr",
                          "typeString": "string memory"
                        },
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      ],
                      "id": 82,
                      "name": "ItemCreated",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 34,
                      "src": "813:11:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_event_nonpayable$_t_uint256_$_t_string_memory_ptr_$_t_uint256_$_t_address_$returns$__$",
                        "typeString": "function (uint256,string memory,uint256,address)"
                      }
                    },
                    "id": 88,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "813:48:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 89,
                  "nodeType": "EmitStatement",
                  "src": "808:53:0"
                }
              ]
            },
            "functionSelector": "8c551742",
            "id": 91,
            "implemented": true,
            "kind": "function",
            "modifiers": [],
            "name": "createItem",
            "nameLocation": "575:10:0",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 51,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 48,
                  "mutability": "mutable",
                  "name": "_name",
                  "nameLocation": "600:5:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 91,
                  "src": "586:19:0",
                  "stateVariable": false,
                  "storageLocation": "memory",
                  "typeDescriptions": {
                    "typeIdentifier": "t_string_memory_ptr",
                    "typeString": "string"
                  },
                  "typeName": {
                    "id": 47,
                    "name": "string",
                    "nodeType": "ElementaryTypeName",
                    "src": "586:6:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_string_storage_ptr",
                      "typeString": "string"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 50,
                  "mutability": "mutable",
                  "name": "_price",
                  "nameLocation": "612:6:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 91,
                  "src": "607:11:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 49,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "607:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "585:34:0"
            },
            "returnParameters": {
              "id": 52,
              "nodeType": "ParameterList",
              "parameters": [],
              "src": "627:0:0"
            },
            "scope": 294,
            "src": "566:303:0",
            "stateMutability": "nonpayable",
            "virtual": false,
            "visibility": "public"
          },
          {
            "body": {
              "id": 140,
              "nodeType": "Block",
              "src": "928:277:0",
              "statements": [
                {
                  "assignments": [
                    100
                  ],
                  "declarations": [
                    {
                      "constant": false,
                      "id": 100,
                      "mutability": "mutable",
                      "name": "item",
                      "nameLocation": "952:4:0",
                      "nodeType": "VariableDeclaration",
                      "scope": 140,
                      "src": "939:17:0",
                      "stateVariable": false,
                      "storageLocation": "storage",
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                        "typeString": "struct SupplyChain.Item"
                      },
                      "typeName": {
                        "id": 99,
                        "nodeType": "UserDefinedTypeName",
                        "pathNode": {
                          "id": 98,
                          "name": "Item",
                          "nameLocations": [
                            "939:4:0"
                          ],
                          "nodeType": "IdentifierPath",
                          "referencedDeclaration": 17,
                          "src": "939:4:0"
                        },
                        "referencedDeclaration": 17,
                        "src": "939:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item"
                        }
                      },
                      "visibility": "internal"
                    }
                  ],
                  "id": 104,
                  "initialValue": {
                    "baseExpression": {
                      "id": 101,
                      "name": "items",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 24,
                      "src": "959:5:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_mapping$_t_uint256_$_t_struct$_Item_$17_storage_$",
                        "typeString": "mapping(uint256 => struct SupplyChain.Item storage ref)"
                      }
                    },
                    "id": 103,
                    "indexExpression": {
                      "id": 102,
                      "name": "_sku",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 93,
                      "src": "965:4:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "isConstant": false,
                    "isLValue": true,
                    "isPure": false,
                    "lValueRequested": false,
                    "nodeType": "IndexAccess",
                    "src": "959:11:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_struct$_Item_$17_storage",
                      "typeString": "struct SupplyChain.Item storage ref"
                    }
                  },
                  "nodeType": "VariableDeclarationStatement",
                  "src": "939:31:0"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "commonType": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        "id": 109,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "expression": {
                            "id": 106,
                            "name": "item",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 100,
                            "src": "989:4:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                              "typeString": "struct SupplyChain.Item storage pointer"
                            }
                          },
                          "id": 107,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "994:3:0",
                          "memberName": "sku",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 7,
                          "src": "989:8:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": "!=",
                        "rightExpression": {
                          "hexValue": "30",
                          "id": 108,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "kind": "number",
                          "lValueRequested": false,
                          "nodeType": "Literal",
                          "src": "1001:1:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_rational_0_by_1",
                            "typeString": "int_const 0"
                          },
                          "value": "0"
                        },
                        "src": "989:13:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "hexValue": "4974656d20646f6573206e6f74206578697374",
                        "id": 110,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "1004:21:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907",
                          "typeString": "literal_string \"Item does not exist\""
                        },
                        "value": "Item does not exist"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907",
                          "typeString": "literal_string \"Item does not exist\""
                        }
                      ],
                      "id": 105,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        4294967278,
                        4294967278
                      ],
                      "referencedDeclaration": 4294967278,
                      "src": "981:7:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 111,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "981:45:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 112,
                  "nodeType": "ExpressionStatement",
                  "src": "981:45:0"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "commonType": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        },
                        "id": 118,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "expression": {
                            "id": 114,
                            "name": "item",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 100,
                            "src": "1045:4:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                              "typeString": "struct SupplyChain.Item storage pointer"
                            }
                          },
                          "id": 115,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "1050:5:0",
                          "memberName": "owner",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 13,
                          "src": "1045:10:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_address",
                            "typeString": "address"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": "==",
                        "rightExpression": {
                          "expression": {
                            "id": 116,
                            "name": "msg",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 4294967281,
                            "src": "1059:3:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_magic_message",
                              "typeString": "msg"
                            }
                          },
                          "id": 117,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "1063:6:0",
                          "memberName": "sender",
                          "nodeType": "MemberAccess",
                          "src": "1059:10:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_address",
                            "typeString": "address"
                          }
                        },
                        "src": "1045:24:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "hexValue": "4e6f7420746865206f776e6572",
                        "id": 119,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "1071:15:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_72ec00def0a4f647f10f2a5c1742fab7d53364130edc365182f3ccef5864f2a5",
                          "typeString": "literal_string \"Not the owner\""
                        },
                        "value": "Not the owner"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_72ec00def0a4f647f10f2a5c1742fab7d53364130edc365182f3ccef5864f2a5",
                          "typeString": "literal_string \"Not the owner\""
                        }
                      ],
                      "id": 113,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        4294967278,
                        4294967278
                      ],
                      "referencedDeclaration": 4294967278,
                      "src": "1037:7:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 120,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1037:50:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 121,
                  "nodeType": "ExpressionStatement",
                  "src": "1037:50:0"
                },
                {
                  "expression": {
                    "id": 126,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "expression": {
                        "id": 122,
                        "name": "item",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 100,
                        "src": "1098:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item storage pointer"
                        }
                      },
                      "id": 124,
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": true,
                      "memberLocation": "1103:5:0",
                      "memberName": "price",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 11,
                      "src": "1098:10:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "=",
                    "rightHandSide": {
                      "id": 125,
                      "name": "_price",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 95,
                      "src": "1111:6:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "src": "1098:19:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "id": 127,
                  "nodeType": "ExpressionStatement",
                  "src": "1098:19:0"
                },
                {
                  "expression": {
                    "id": 133,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "expression": {
                        "id": 128,
                        "name": "item",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 100,
                        "src": "1128:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item storage pointer"
                        }
                      },
                      "id": 130,
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": true,
                      "memberLocation": "1133:6:0",
                      "memberName": "status",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 16,
                      "src": "1128:11:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_enum$_Status_$5",
                        "typeString": "enum SupplyChain.Status"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "=",
                    "rightHandSide": {
                      "expression": {
                        "id": 131,
                        "name": "Status",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 5,
                        "src": "1142:6:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_type$_t_enum$_Status_$5_$",
                          "typeString": "type(enum SupplyChain.Status)"
                        }
                      },
                      "id": 132,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "lValueRequested": false,
                      "memberLocation": "1149:7:0",
                      "memberName": "ForSale",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 3,
                      "src": "1142:14:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_enum$_Status_$5",
                        "typeString": "enum SupplyChain.Status"
                      }
                    },
                    "src": "1128:28:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_enum$_Status_$5",
                      "typeString": "enum SupplyChain.Status"
                    }
                  },
                  "id": 134,
                  "nodeType": "ExpressionStatement",
                  "src": "1128:28:0"
                },
                {
                  "eventCall": {
                    "arguments": [
                      {
                        "id": 136,
                        "name": "_sku",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 93,
                        "src": "1184:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "id": 137,
                        "name": "_price",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 95,
                        "src": "1190:6:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      ],
                      "id": 135,
                      "name": "ItemForSale",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 40,
                      "src": "1172:11:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_event_nonpayable$_t_uint256_$_t_uint256_$returns$__$",
                        "typeString": "function (uint256,uint256)"
                      }
                    },
                    "id": 138,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1172:25:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 139,
                  "nodeType": "EmitStatement",
                  "src": "1167:30:0"
                }
              ]
            },
            "functionSelector": "3cd76be2",
            "id": 141,
            "implemented": true,
            "kind": "function",
            "modifiers": [],
            "name": "putForSale",
            "nameLocation": "886:10:0",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 96,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 93,
                  "mutability": "mutable",
                  "name": "_sku",
                  "nameLocation": "902:4:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 141,
                  "src": "897:9:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 92,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "897:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 95,
                  "mutability": "mutable",
                  "name": "_price",
                  "nameLocation": "913:6:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 141,
                  "src": "908:11:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 94,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "908:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "896:24:0"
            },
            "returnParameters": {
              "id": 97,
              "nodeType": "ParameterList",
              "parameters": [],
              "src": "928:0:0"
            },
            "scope": 294,
            "src": "877:328:0",
            "stateMutability": "nonpayable",
            "virtual": false,
            "visibility": "public"
          },
          {
            "body": {
              "id": 240,
              "nodeType": "Block",
              "src": "1256:585:0",
              "statements": [
                {
                  "assignments": [
                    148
                  ],
                  "declarations": [
                    {
                      "constant": false,
                      "id": 148,
                      "mutability": "mutable",
                      "name": "item",
                      "nameLocation": "1280:4:0",
                      "nodeType": "VariableDeclaration",
                      "scope": 240,
                      "src": "1267:17:0",
                      "stateVariable": false,
                      "storageLocation": "storage",
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                        "typeString": "struct SupplyChain.Item"
                      },
                      "typeName": {
                        "id": 147,
                        "nodeType": "UserDefinedTypeName",
                        "pathNode": {
                          "id": 146,
                          "name": "Item",
                          "nameLocations": [
                            "1267:4:0"
                          ],
                          "nodeType": "IdentifierPath",
                          "referencedDeclaration": 17,
                          "src": "1267:4:0"
                        },
                        "referencedDeclaration": 17,
                        "src": "1267:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item"
                        }
                      },
                      "visibility": "internal"
                    }
                  ],
                  "id": 152,
                  "initialValue": {
                    "baseExpression": {
                      "id": 149,
                      "name": "items",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 24,
                      "src": "1287:5:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_mapping$_t_uint256_$_t_struct$_Item_$17_storage_$",
                        "typeString": "mapping(uint256 => struct SupplyChain.Item storage ref)"
                      }
                    },
                    "id": 151,
                    "indexExpression": {
                      "id": 150,
                      "name": "_sku",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 143,
                      "src": "1293:4:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "isConstant": false,
                    "isLValue": true,
                    "isPure": false,
                    "lValueRequested": false,
                    "nodeType": "IndexAccess",
                    "src": "1287:11:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_struct$_Item_$17_storage",
                      "typeString": "struct SupplyChain.Item storage ref"
                    }
                  },
                  "nodeType": "VariableDeclarationStatement",
                  "src": "1267:31:0"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "commonType": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        "id": 157,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "expression": {
                            "id": 154,
                            "name": "item",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 148,
                            "src": "1317:4:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                              "typeString": "struct SupplyChain.Item storage pointer"
                            }
                          },
                          "id": 155,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "1322:3:0",
                          "memberName": "sku",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 7,
                          "src": "1317:8:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": "!=",
                        "rightExpression": {
                          "hexValue": "30",
                          "id": 156,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "kind": "number",
                          "lValueRequested": false,
                          "nodeType": "Literal",
                          "src": "1329:1:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_rational_0_by_1",
                            "typeString": "int_const 0"
                          },
                          "value": "0"
                        },
                        "src": "1317:13:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "hexValue": "4974656d20646f6573206e6f74206578697374",
                        "id": 158,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "1332:21:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907",
                          "typeString": "literal_string \"Item does not exist\""
                        },
                        "value": "Item does not exist"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907",
                          "typeString": "literal_string \"Item does not exist\""
                        }
                      ],
                      "id": 153,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        4294967278,
                        4294967278
                      ],
                      "referencedDeclaration": 4294967278,
                      "src": "1309:7:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 159,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1309:45:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 160,
                  "nodeType": "ExpressionStatement",
                  "src": "1309:45:0"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "commonType": {
                          "typeIdentifier": "t_enum$_Status_$5",
                          "typeString": "enum SupplyChain.Status"
                        },
                        "id": 166,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "expression": {
                            "id": 162,
                            "name": "item",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 148,
                            "src": "1373:4:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                              "typeString": "struct SupplyChain.Item storage pointer"
                            }
                          },
                          "id": 163,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "1378:6:0",
                          "memberName": "status",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 16,
                          "src": "1373:11:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_enum$_Status_$5",
                            "typeString": "enum SupplyChain.Status"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": "==",
                        "rightExpression": {
                          "expression": {
                            "id": 164,
                            "name": "Status",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 5,
                            "src": "1388:6:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_type$_t_enum$_Status_$5_$",
                              "typeString": "type(enum SupplyChain.Status)"
                            }
                          },
                          "id": 165,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "lValueRequested": false,
                          "memberLocation": "1395:7:0",
                          "memberName": "ForSale",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 3,
                          "src": "1388:14:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_enum$_Status_$5",
                            "typeString": "enum SupplyChain.Status"
                          }
                        },
                        "src": "1373:29:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "hexValue": "4974656d206e6f7420666f722073616c65",
                        "id": 167,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "1404:19:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_df16b7349c0253f6fb9f4484e9e154e83d51fd52f2fb4123d23e27c0f5581980",
                          "typeString": "literal_string \"Item not for sale\""
                        },
                        "value": "Item not for sale"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_df16b7349c0253f6fb9f4484e9e154e83d51fd52f2fb4123d23e27c0f5581980",
                          "typeString": "literal_string \"Item not for sale\""
                        }
                      ],
                      "id": 161,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        4294967278,
                        4294967278
                      ],
                      "referencedDeclaration": 4294967278,
                      "src": "1365:7:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 168,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1365:59:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 169,
                  "nodeType": "ExpressionStatement",
                  "src": "1365:59:0"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "commonType": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        "id": 175,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "expression": {
                            "id": 171,
                            "name": "msg",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 4294967281,
                            "src": "1443:3:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_magic_message",
                              "typeString": "msg"
                            }
                          },
                          "id": 172,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "1447:5:0",
                          "memberName": "value",
                          "nodeType": "MemberAccess",
                          "src": "1443:9:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": ">=",
                        "rightExpression": {
                          "expression": {
                            "id": 173,
                            "name": "item",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 148,
                            "src": "1456:4:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                              "typeString": "struct SupplyChain.Item storage pointer"
                            }
                          },
                          "id": 174,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "1461:5:0",
                          "memberName": "price",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 11,
                          "src": "1456:10:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        "src": "1443:23:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "hexValue": "4e6f7420656e6f7567682045746865722073656e74",
                        "id": 176,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "1468:23:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_1c6427ba804cdc03d4ea49311785a6c33377d5d12d933da48fa5349576bce28b",
                          "typeString": "literal_string \"Not enough Ether sent\""
                        },
                        "value": "Not enough Ether sent"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_1c6427ba804cdc03d4ea49311785a6c33377d5d12d933da48fa5349576bce28b",
                          "typeString": "literal_string \"Not enough Ether sent\""
                        }
                      ],
                      "id": 170,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        4294967278,
                        4294967278
                      ],
                      "referencedDeclaration": 4294967278,
                      "src": "1435:7:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 177,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1435:57:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 178,
                  "nodeType": "ExpressionStatement",
                  "src": "1435:57:0"
                },
                {
                  "assignments": [
                    180
                  ],
                  "declarations": [
                    {
                      "constant": false,
                      "id": 180,
                      "mutability": "mutable",
                      "name": "seller",
                      "nameLocation": "1521:6:0",
                      "nodeType": "VariableDeclaration",
                      "scope": 240,
                      "src": "1505:22:0",
                      "stateVariable": false,
                      "storageLocation": "default",
                      "typeDescriptions": {
                        "typeIdentifier": "t_address_payable",
                        "typeString": "address payable"
                      },
                      "typeName": {
                        "id": 179,
                        "name": "address",
                        "nodeType": "ElementaryTypeName",
                        "src": "1505:15:0",
                        "stateMutability": "payable",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address_payable",
                          "typeString": "address payable"
                        }
                      },
                      "visibility": "internal"
                    }
                  ],
                  "id": 186,
                  "initialValue": {
                    "arguments": [
                      {
                        "expression": {
                          "id": 183,
                          "name": "item",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 148,
                          "src": "1538:4:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                            "typeString": "struct SupplyChain.Item storage pointer"
                          }
                        },
                        "id": 184,
                        "isConstant": false,
                        "isLValue": true,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "1543:5:0",
                        "memberName": "owner",
                        "nodeType": "MemberAccess",
                        "referencedDeclaration": 13,
                        "src": "1538:10:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      ],
                      "id": 182,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "lValueRequested": false,
                      "nodeType": "ElementaryTypeNameExpression",
                      "src": "1530:8:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_type$_t_address_payable_$",
                        "typeString": "type(address payable)"
                      },
                      "typeName": {
                        "id": 181,
                        "name": "address",
                        "nodeType": "ElementaryTypeName",
                        "src": "1530:8:0",
                        "stateMutability": "payable",
                        "typeDescriptions": {}
                      }
                    },
                    "id": 185,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "typeConversion",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1530:19:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_address_payable",
                      "typeString": "address payable"
                    }
                  },
                  "nodeType": "VariableDeclarationStatement",
                  "src": "1505:44:0"
                },
                {
                  "expression": {
                    "id": 192,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "expression": {
                        "id": 187,
                        "name": "item",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 148,
                        "src": "1560:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item storage pointer"
                        }
                      },
                      "id": 189,
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": true,
                      "memberLocation": "1565:5:0",
                      "memberName": "owner",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 13,
                      "src": "1560:10:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_address",
                        "typeString": "address"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "=",
                    "rightHandSide": {
                      "expression": {
                        "id": 190,
                        "name": "msg",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 4294967281,
                        "src": "1573:3:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_magic_message",
                          "typeString": "msg"
                        }
                      },
                      "id": 191,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "lValueRequested": false,
                      "memberLocation": "1577:6:0",
                      "memberName": "sender",
                      "nodeType": "MemberAccess",
                      "src": "1573:10:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_address",
                        "typeString": "address"
                      }
                    },
                    "src": "1560:23:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "id": 193,
                  "nodeType": "ExpressionStatement",
                  "src": "1560:23:0"
                },
                {
                  "expression": {
                    "id": 199,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "expression": {
                        "id": 194,
                        "name": "item",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 148,
                        "src": "1594:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item storage pointer"
                        }
                      },
                      "id": 196,
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": true,
                      "memberLocation": "1599:6:0",
                      "memberName": "status",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 16,
                      "src": "1594:11:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_enum$_Status_$5",
                        "typeString": "enum SupplyChain.Status"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "=",
                    "rightHandSide": {
                      "expression": {
                        "id": 197,
                        "name": "Status",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 5,
                        "src": "1608:6:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_type$_t_enum$_Status_$5_$",
                          "typeString": "type(enum SupplyChain.Status)"
                        }
                      },
                      "id": 198,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "lValueRequested": false,
                      "memberLocation": "1615:4:0",
                      "memberName": "Sold",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 4,
                      "src": "1608:11:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_enum$_Status_$5",
                        "typeString": "enum SupplyChain.Status"
                      }
                    },
                    "src": "1594:25:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_enum$_Status_$5",
                      "typeString": "enum SupplyChain.Status"
                    }
                  },
                  "id": 200,
                  "nodeType": "ExpressionStatement",
                  "src": "1594:25:0"
                },
                {
                  "condition": {
                    "commonType": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    },
                    "id": 204,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftExpression": {
                      "expression": {
                        "id": 201,
                        "name": "item",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 148,
                        "src": "1636:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item storage pointer"
                        }
                      },
                      "id": 202,
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": false,
                      "memberLocation": "1641:5:0",
                      "memberName": "price",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 11,
                      "src": "1636:10:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "nodeType": "BinaryOperation",
                    "operator": ">",
                    "rightExpression": {
                      "hexValue": "30",
                      "id": 203,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "kind": "number",
                      "lValueRequested": false,
                      "nodeType": "Literal",
                      "src": "1649:1:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_rational_0_by_1",
                        "typeString": "int_const 0"
                      },
                      "value": "0"
                    },
                    "src": "1636:14:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_bool",
                      "typeString": "bool"
                    }
                  },
                  "id": 212,
                  "nodeType": "IfStatement",
                  "src": "1632:47:0",
                  "trueBody": {
                    "expression": {
                      "arguments": [
                        {
                          "expression": {
                            "id": 208,
                            "name": "item",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 148,
                            "src": "1668:4:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                              "typeString": "struct SupplyChain.Item storage pointer"
                            }
                          },
                          "id": 209,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "1673:5:0",
                          "memberName": "price",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 11,
                          "src": "1668:10:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        }
                      ],
                      "expression": {
                        "argumentTypes": [
                          {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        ],
                        "expression": {
                          "id": 205,
                          "name": "seller",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 180,
                          "src": "1652:6:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_address_payable",
                            "typeString": "address payable"
                          }
                        },
                        "id": 207,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "1659:8:0",
                        "memberName": "transfer",
                        "nodeType": "MemberAccess",
                        "src": "1652:15:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_function_transfer_nonpayable$_t_uint256_$returns$__$",
                          "typeString": "function (uint256)"
                        }
                      },
                      "id": 210,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "kind": "functionCall",
                      "lValueRequested": false,
                      "nameLocations": [],
                      "names": [],
                      "nodeType": "FunctionCall",
                      "src": "1652:27:0",
                      "tryCall": false,
                      "typeDescriptions": {
                        "typeIdentifier": "t_tuple$__$",
                        "typeString": "tuple()"
                      }
                    },
                    "id": 211,
                    "nodeType": "ExpressionStatement",
                    "src": "1652:27:0"
                  }
                },
                {
                  "assignments": [
                    214
                  ],
                  "declarations": [
                    {
                      "constant": false,
                      "id": 214,
                      "mutability": "mutable",
                      "name": "excess",
                      "nameLocation": "1695:6:0",
                      "nodeType": "VariableDeclaration",
                      "scope": 240,
                      "src": "1690:11:0",
                      "stateVariable": false,
                      "storageLocation": "default",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      },
                      "typeName": {
                        "id": 213,
                        "name": "uint",
                        "nodeType": "ElementaryTypeName",
                        "src": "1690:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      "visibility": "internal"
                    }
                  ],
                  "id": 220,
                  "initialValue": {
                    "commonType": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    },
                    "id": 219,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftExpression": {
                      "expression": {
                        "id": 215,
                        "name": "msg",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 4294967281,
                        "src": "1704:3:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_magic_message",
                          "typeString": "msg"
                        }
                      },
                      "id": 216,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "lValueRequested": false,
                      "memberLocation": "1708:5:0",
                      "memberName": "value",
                      "nodeType": "MemberAccess",
                      "src": "1704:9:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "nodeType": "BinaryOperation",
                    "operator": "-",
                    "rightExpression": {
                      "expression": {
                        "id": 217,
                        "name": "item",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 148,
                        "src": "1716:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item storage pointer"
                        }
                      },
                      "id": 218,
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": false,
                      "memberLocation": "1721:5:0",
                      "memberName": "price",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 11,
                      "src": "1716:10:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "src": "1704:22:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "nodeType": "VariableDeclarationStatement",
                  "src": "1690:36:0"
                },
                {
                  "condition": {
                    "commonType": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    },
                    "id": 223,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftExpression": {
                      "id": 221,
                      "name": "excess",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 214,
                      "src": "1741:6:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "nodeType": "BinaryOperation",
                    "operator": ">",
                    "rightExpression": {
                      "hexValue": "30",
                      "id": 222,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "kind": "number",
                      "lValueRequested": false,
                      "nodeType": "Literal",
                      "src": "1750:1:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_rational_0_by_1",
                        "typeString": "int_const 0"
                      },
                      "value": "0"
                    },
                    "src": "1741:10:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_bool",
                      "typeString": "bool"
                    }
                  },
                  "id": 233,
                  "nodeType": "IfStatement",
                  "src": "1737:52:0",
                  "trueBody": {
                    "expression": {
                      "arguments": [
                        {
                          "id": 230,
                          "name": "excess",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 214,
                          "src": "1782:6:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        }
                      ],
                      "expression": {
                        "argumentTypes": [
                          {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        ],
                        "expression": {
                          "arguments": [
                            {
                              "expression": {
                                "id": 226,
                                "name": "msg",
                                "nodeType": "Identifier",
                                "overloadedDeclarations": [],
                                "referencedDeclaration": 4294967281,
                                "src": "1761:3:0",
                                "typeDescriptions": {
                                  "typeIdentifier": "t_magic_message",
                                  "typeString": "msg"
                                }
                              },
                              "id": 227,
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": false,
                              "lValueRequested": false,
                              "memberLocation": "1765:6:0",
                              "memberName": "sender",
                              "nodeType": "MemberAccess",
                              "src": "1761:10:0",
                              "typeDescriptions": {
                                "typeIdentifier": "t_address",
                                "typeString": "address"
                              }
                            }
                          ],
                          "expression": {
                            "argumentTypes": [
                              {
                                "typeIdentifier": "t_address",
                                "typeString": "address"
                              }
                            ],
                            "id": 225,
                            "isConstant": false,
                            "isLValue": false,
                            "isPure": true,
                            "lValueRequested": false,
                            "nodeType": "ElementaryTypeNameExpression",
                            "src": "1753:8:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_type$_t_address_payable_$",
                              "typeString": "type(address payable)"
                            },
                            "typeName": {
                              "id": 224,
                              "name": "address",
                              "nodeType": "ElementaryTypeName",
                              "src": "1753:8:0",
                              "stateMutability": "payable",
                              "typeDescriptions": {}
                            }
                          },
                          "id": 228,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "kind": "typeConversion",
                          "lValueRequested": false,
                          "nameLocations": [],
                          "names": [],
                          "nodeType": "FunctionCall",
                          "src": "1753:19:0",
                          "tryCall": false,
                          "typeDescriptions": {
                            "typeIdentifier": "t_address_payable",
                            "typeString": "address payable"
                          }
                        },
                        "id": 229,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "1773:8:0",
                        "memberName": "transfer",
                        "nodeType": "MemberAccess",
                        "src": "1753:28:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_function_transfer_nonpayable$_t_uint256_$returns$__$",
                          "typeString": "function (uint256)"
                        }
                      },
                      "id": 231,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "kind": "functionCall",
                      "lValueRequested": false,
                      "nameLocations": [],
                      "names": [],
                      "nodeType": "FunctionCall",
                      "src": "1753:36:0",
                      "tryCall": false,
                      "typeDescriptions": {
                        "typeIdentifier": "t_tuple$__$",
                        "typeString": "tuple()"
                      }
                    },
                    "id": 232,
                    "nodeType": "ExpressionStatement",
                    "src": "1753:36:0"
                  }
                },
                {
                  "eventCall": {
                    "arguments": [
                      {
                        "id": 235,
                        "name": "_sku",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 143,
                        "src": "1816:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "expression": {
                          "id": 236,
                          "name": "msg",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 4294967281,
                          "src": "1822:3:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_magic_message",
                            "typeString": "msg"
                          }
                        },
                        "id": 237,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "1826:6:0",
                        "memberName": "sender",
                        "nodeType": "MemberAccess",
                        "src": "1822:10:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      ],
                      "id": 234,
                      "name": "ItemSold",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 46,
                      "src": "1807:8:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_event_nonpayable$_t_uint256_$_t_address_$returns$__$",
                        "typeString": "function (uint256,address)"
                      }
                    },
                    "id": 238,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1807:26:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 239,
                  "nodeType": "EmitStatement",
                  "src": "1802:31:0"
                }
              ]
            },
            "functionSelector": "e7fb74c7",
            "id": 241,
            "implemented": true,
            "kind": "function",
            "modifiers": [],
            "name": "buyItem",
            "nameLocation": "1222:7:0",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 144,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 143,
                  "mutability": "mutable",
                  "name": "_sku",
                  "nameLocation": "1235:4:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 241,
                  "src": "1230:9:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 142,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "1230:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "1229:11:0"
            },
            "returnParameters": {
              "id": 145,
              "nodeType": "ParameterList",
              "parameters": [],
              "src": "1256:0:0"
            },
            "scope": 294,
            "src": "1213:628:0",
            "stateMutability": "payable",
            "virtual": false,
            "visibility": "public"
          },
          {
            "body": {
              "id": 284,
              "nodeType": "Block",
              "src": "1942:168:0",
              "statements": [
                {
                  "assignments": [
                    259
                  ],
                  "declarations": [
                    {
                      "constant": false,
                      "id": 259,
                      "mutability": "mutable",
                      "name": "it",
                      "nameLocation": "1966:2:0",
                      "nodeType": "VariableDeclaration",
                      "scope": 284,
                      "src": "1953:15:0",
                      "stateVariable": false,
                      "storageLocation": "storage",
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                        "typeString": "struct SupplyChain.Item"
                      },
                      "typeName": {
                        "id": 258,
                        "nodeType": "UserDefinedTypeName",
                        "pathNode": {
                          "id": 257,
                          "name": "Item",
                          "nameLocations": [
                            "1953:4:0"
                          ],
                          "nodeType": "IdentifierPath",
                          "referencedDeclaration": 17,
                          "src": "1953:4:0"
                        },
                        "referencedDeclaration": 17,
                        "src": "1953:4:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                          "typeString": "struct SupplyChain.Item"
                        }
                      },
                      "visibility": "internal"
                    }
                  ],
                  "id": 263,
                  "initialValue": {
                    "baseExpression": {
                      "id": 260,
                      "name": "items",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 24,
                      "src": "1971:5:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_mapping$_t_uint256_$_t_struct$_Item_$17_storage_$",
                        "typeString": "mapping(uint256 => struct SupplyChain.Item storage ref)"
                      }
                    },
                    "id": 262,
                    "indexExpression": {
                      "id": 261,
                      "name": "_sku",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 243,
                      "src": "1977:4:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "isConstant": false,
                    "isLValue": true,
                    "isPure": false,
                    "lValueRequested": false,
                    "nodeType": "IndexAccess",
                    "src": "1971:11:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_struct$_Item_$17_storage",
                      "typeString": "struct SupplyChain.Item storage ref"
                    }
                  },
                  "nodeType": "VariableDeclarationStatement",
                  "src": "1953:29:0"
                },
                {
                  "expression": {
                    "arguments": [
                      {
                        "commonType": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        "id": 268,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "expression": {
                            "id": 265,
                            "name": "it",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 259,
                            "src": "2001:2:0",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                              "typeString": "struct SupplyChain.Item storage pointer"
                            }
                          },
                          "id": 266,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberLocation": "2004:3:0",
                          "memberName": "sku",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 7,
                          "src": "2001:6:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_uint256",
                            "typeString": "uint256"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": "!=",
                        "rightExpression": {
                          "hexValue": "30",
                          "id": 267,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "kind": "number",
                          "lValueRequested": false,
                          "nodeType": "Literal",
                          "src": "2011:1:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_rational_0_by_1",
                            "typeString": "int_const 0"
                          },
                          "value": "0"
                        },
                        "src": "2001:11:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "hexValue": "4974656d20646f6573206e6f74206578697374",
                        "id": 269,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "2014:21:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907",
                          "typeString": "literal_string \"Item does not exist\""
                        },
                        "value": "Item does not exist"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_ce0a686b3a77d89aa203ef1917c5a461c03ae6389a02bb3c3b9a97959d623907",
                          "typeString": "literal_string \"Item does not exist\""
                        }
                      ],
                      "id": 264,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        4294967278,
                        4294967278
                      ],
                      "referencedDeclaration": 4294967278,
                      "src": "1993:7:0",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 270,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "nameLocations": [],
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1993:43:0",
                    "tryCall": false,
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 271,
                  "nodeType": "ExpressionStatement",
                  "src": "1993:43:0"
                },
                {
                  "expression": {
                    "components": [
                      {
                        "expression": {
                          "id": 272,
                          "name": "it",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 259,
                          "src": "2055:2:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                            "typeString": "struct SupplyChain.Item storage pointer"
                          }
                        },
                        "id": 273,
                        "isConstant": false,
                        "isLValue": true,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "2058:3:0",
                        "memberName": "sku",
                        "nodeType": "MemberAccess",
                        "referencedDeclaration": 7,
                        "src": "2055:6:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "expression": {
                          "id": 274,
                          "name": "it",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 259,
                          "src": "2063:2:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                            "typeString": "struct SupplyChain.Item storage pointer"
                          }
                        },
                        "id": 275,
                        "isConstant": false,
                        "isLValue": true,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "2066:4:0",
                        "memberName": "name",
                        "nodeType": "MemberAccess",
                        "referencedDeclaration": 9,
                        "src": "2063:7:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_string_storage",
                          "typeString": "string storage ref"
                        }
                      },
                      {
                        "expression": {
                          "id": 276,
                          "name": "it",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 259,
                          "src": "2072:2:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                            "typeString": "struct SupplyChain.Item storage pointer"
                          }
                        },
                        "id": 277,
                        "isConstant": false,
                        "isLValue": true,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "2075:5:0",
                        "memberName": "price",
                        "nodeType": "MemberAccess",
                        "referencedDeclaration": 11,
                        "src": "2072:8:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "expression": {
                          "id": 278,
                          "name": "it",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 259,
                          "src": "2082:2:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                            "typeString": "struct SupplyChain.Item storage pointer"
                          }
                        },
                        "id": 279,
                        "isConstant": false,
                        "isLValue": true,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "2085:5:0",
                        "memberName": "owner",
                        "nodeType": "MemberAccess",
                        "referencedDeclaration": 13,
                        "src": "2082:8:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      },
                      {
                        "expression": {
                          "id": 280,
                          "name": "it",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 259,
                          "src": "2092:2:0",
                          "typeDescriptions": {
                            "typeIdentifier": "t_struct$_Item_$17_storage_ptr",
                            "typeString": "struct SupplyChain.Item storage pointer"
                          }
                        },
                        "id": 281,
                        "isConstant": false,
                        "isLValue": true,
                        "isPure": false,
                        "lValueRequested": false,
                        "memberLocation": "2095:6:0",
                        "memberName": "status",
                        "nodeType": "MemberAccess",
                        "referencedDeclaration": 16,
                        "src": "2092:9:0",
                        "typeDescriptions": {
                          "typeIdentifier": "t_enum$_Status_$5",
                          "typeString": "enum SupplyChain.Status"
                        }
                      }
                    ],
                    "id": 282,
                    "isConstant": false,
                    "isInlineArray": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "nodeType": "TupleExpression",
                    "src": "2054:48:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$_t_uint256_$_t_string_storage_$_t_uint256_$_t_address_$_t_enum$_Status_$5_$",
                      "typeString": "tuple(uint256,string storage ref,uint256,address,enum SupplyChain.Status)"
                    }
                  },
                  "functionReturnParameters": 256,
                  "id": 283,
                  "nodeType": "Return",
                  "src": "2047:55:0"
                }
              ]
            },
            "functionSelector": "3129e773",
            "id": 285,
            "implemented": true,
            "kind": "function",
            "modifiers": [],
            "name": "getItem",
            "nameLocation": "1858:7:0",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 244,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 243,
                  "mutability": "mutable",
                  "name": "_sku",
                  "nameLocation": "1871:4:0",
                  "nodeType": "VariableDeclaration",
                  "scope": 285,
                  "src": "1866:9:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 242,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "1866:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "1865:11:0"
            },
            "returnParameters": {
              "id": 256,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 246,
                  "mutability": "mutable",
                  "name": "",
                  "nameLocation": "-1:-1:-1",
                  "nodeType": "VariableDeclaration",
                  "scope": 285,
                  "src": "1898:4:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 245,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "1898:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 248,
                  "mutability": "mutable",
                  "name": "",
                  "nameLocation": "-1:-1:-1",
                  "nodeType": "VariableDeclaration",
                  "scope": 285,
                  "src": "1904:13:0",
                  "stateVariable": false,
                  "storageLocation": "memory",
                  "typeDescriptions": {
                    "typeIdentifier": "t_string_memory_ptr",
                    "typeString": "string"
                  },
                  "typeName": {
                    "id": 247,
                    "name": "string",
                    "nodeType": "ElementaryTypeName",
                    "src": "1904:6:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_string_storage_ptr",
                      "typeString": "string"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 250,
                  "mutability": "mutable",
                  "name": "",
                  "nameLocation": "-1:-1:-1",
                  "nodeType": "VariableDeclaration",
                  "scope": 285,
                  "src": "1919:4:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 249,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "1919:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 252,
                  "mutability": "mutable",
                  "name": "",
                  "nameLocation": "-1:-1:-1",
                  "nodeType": "VariableDeclaration",
                  "scope": 285,
                  "src": "1925:7:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  },
                  "typeName": {
                    "id": 251,
                    "name": "address",
                    "nodeType": "ElementaryTypeName",
                    "src": "1925:7:0",
                    "stateMutability": "nonpayable",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 255,
                  "mutability": "mutable",
                  "name": "",
                  "nameLocation": "-1:-1:-1",
                  "nodeType": "VariableDeclaration",
                  "scope": 285,
                  "src": "1934:6:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_enum$_Status_$5",
                    "typeString": "enum SupplyChain.Status"
                  },
                  "typeName": {
                    "id": 254,
                    "nodeType": "UserDefinedTypeName",
                    "pathNode": {
                      "id": 253,
                      "name": "Status",
                      "nameLocations": [
                        "1934:6:0"
                      ],
                      "nodeType": "IdentifierPath",
                      "referencedDeclaration": 5,
                      "src": "1934:6:0"
                    },
                    "referencedDeclaration": 5,
                    "src": "1934:6:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_enum$_Status_$5",
                      "typeString": "enum SupplyChain.Status"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "1897:44:0"
            },
            "scope": 294,
            "src": "1849:261:0",
            "stateMutability": "view",
            "virtual": false,
            "visibility": "public"
          },
          {
            "body": {
              "id": 292,
              "nodeType": "Block",
              "src": "2167:34:0",
              "statements": [
                {
                  "expression": {
                    "id": 290,
                    "name": "skuCount",
                    "nodeType": "Identifier",
                    "overloadedDeclarations": [],
                    "referencedDeclaration": 19,
                    "src": "2185:8:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "functionReturnParameters": 289,
                  "id": 291,
                  "nodeType": "Return",
                  "src": "2178:15:0"
                }
              ]
            },
            "functionSelector": "2799276d",
            "id": 293,
            "implemented": true,
            "kind": "function",
            "modifiers": [],
            "name": "totalItems",
            "nameLocation": "2127:10:0",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 286,
              "nodeType": "ParameterList",
              "parameters": [],
              "src": "2137:2:0"
            },
            "returnParameters": {
              "id": 289,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 288,
                  "mutability": "mutable",
                  "name": "",
                  "nameLocation": "-1:-1:-1",
                  "nodeType": "VariableDeclaration",
                  "scope": 293,
                  "src": "2161:4:0",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 287,
                    "name": "uint",
                    "nodeType": "ElementaryTypeName",
                    "src": "2161:4:0",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "visibility": "internal"
                }
              ],
              "src": "2160:6:0"
            },
            "scope": 294,
            "src": "2118:83:0",
            "stateMutability": "view",
            "virtual": false,
            "visibility": "public"
          }
        ],
        "scope": 295,
        "src": "61:2143:0",
        "usedErrors": []
      }
    ],
    "src": "33:2173:0"
  },
  "compiler": {
    "name": "solc",
    "version": "0.8.19+commit.7dd6d404.Emscripten.clang"
  },
  "networks": {
    "5777": {
      "events": {},
      "links": {},
      "address": "0x110e5487a5bc50B9903ee22F7E4D528fddAd51BB",
      "transactionHash": "0x29e23affb2ae7cbdf86777f931dab53e2c67576b5393870d5a0fac6f0a299214"
    }
  },
  "schemaVersion": "3.4.16",
  "updatedAt": "2025-11-10T03:01:06.289Z",
  "networkType": "ethereum",
  "devdoc": {
    "kind": "dev",
    "methods": {},
    "version": 1
  },
  "userdoc": {
    "kind": "user",
    "methods": {},
    "version": 1
  }
}
