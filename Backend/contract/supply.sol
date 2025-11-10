// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SupplyChain {
    enum Status { Created, ForSale, Sold }

    struct Item {
        uint sku;
        string name;
        uint price;      // in wei
        address owner;
        Status status;
    }

    uint public skuCount;
    mapping(uint => Item) public items;

    event ItemCreated(uint indexed sku, string name, uint price, address indexed owner);
    event ItemForSale(uint indexed sku, uint price);
    event ItemSold(uint indexed sku, address indexed buyer);

    function createItem(string memory _name, uint _price) public {
        require(bytes(_name).length > 0, "Name required");
        skuCount += 1;
        items[skuCount] = Item(skuCount, _name, _price, msg.sender, Status.Created);
        emit ItemCreated(skuCount, _name, _price, msg.sender);
    }

    function putForSale(uint _sku, uint _price) public {
        Item storage item = items[_sku];
        require(item.sku != 0, "Item does not exist");
        require(item.owner == msg.sender, "Not the owner");
        item.price = _price;
        item.status = Status.ForSale;
        emit ItemForSale(_sku, _price);
    }

    function buyItem(uint _sku) public payable {
        Item storage item = items[_sku];
        require(item.sku != 0, "Item does not exist");
        require(item.status == Status.ForSale, "Item not for sale");
        require(msg.value >= item.price, "Not enough Ether sent");

        address payable seller = payable(item.owner);
        item.owner = msg.sender;
        item.status = Status.Sold;

        if (item.price > 0) seller.transfer(item.price);
        uint excess = msg.value - item.price;
        if (excess > 0) payable(msg.sender).transfer(excess);

        emit ItemSold(_sku, msg.sender);
    }

    function getItem(uint _sku) public view returns (uint, string memory, uint, address, Status) {
        Item storage it = items[_sku];
        require(it.sku != 0, "Item does not exist");
        return (it.sku, it.name, it.price, it.owner, it.status);
    }

    function totalItems() public view returns (uint) {
        return skuCount;
    }
}
