pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract DataType {

    struct Shop {
        string ownerName;
        string shopName;
        uint ownerAge;
        address ownerAdress;
        bool isSmallScale;
        bytes ownerDp;
    }

    // like an object
    Shop public firstShop;

    constructor() {
        // get in the same order of struct
        firstShop = Shop("gui", "blockdogui", 65, msg.sender, false, "somexyz");
    }

    // view -> read only
    function logShop() public {
        console.log("owner: ",firstShop.ownerName);
        console.log("owner age: ",firstShop.ownerAge);
        firstShop.ownerName = "guizinzopzp";
        console.log("owner: ",firstShop.ownerName);
    }
}