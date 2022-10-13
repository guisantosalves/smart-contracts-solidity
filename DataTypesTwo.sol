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
    Shop public secondShop;
    Shop[] public shoppingMall;

    constructor() {
        // get in the same order of struct
        firstShop = Shop("gui", "blockdogui", 65, msg.sender, false, "somexyz");
        secondShop = Shop("lucas", "blocklucas", 66, msg.sender, false, "sdasda");
        shoppingMall.push(firstShop);
        shoppingMall.push(secondShop);
    }

    // view -> read only
    function logShop() public view {
        for(uint i; i < shoppingMall.length; i++){
            // shop -> get one by one row from shoppingMall
            Shop memory shop = shoppingMall[i];

            console.log("owner: ", shop.ownerName);
            console.log("owner age: ", shop.ownerAge);
            console.log("owner adress: ", shop.ownerAdress);
        }
    }
}