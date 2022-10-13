pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract DataType {

    event ShopState(string shopStatus);

    enum State {
        Open,
        Closed
    }

    struct Shop {
        string ownerName;
        string shopName;
        uint ownerAge;
        address ownerAdress;
        bool isSmallScale;
        bytes ownerDp;
        State state;
    }

    // like an object
    Shop public firstShop;
    Shop public secondShop;
    Shop[] public shoppingMall;

    // key string - value Shop
    mapping(string => Shop[]) public market;

    constructor() {
        // get in the same order of struct
        firstShop = Shop("gui", "blockdogui", 65, msg.sender, false, "somexyz", State.Open);
        secondShop = Shop("lucas", "blocklucas", 66, msg.sender, false, "sdasda", State.Closed);
        shoppingMall.push(firstShop);
        shoppingMall.push(secondShop);

        market["market"] = shoppingMall;
    }

    // view -> read only
    function readShop() public {
        // mapping
        Shop[] memory mall = market["market"];

        for(uint i; i < mall.length; i++){
            // shop -> get one by one row from shoppingMall
            Shop memory shop = shoppingMall[i];
            
            // require is a rule to contract -> exceptions
            // require(shop.state == State.Open, "in order to proceed shop should be open");
            // if(shop.state == State.Open){
            //     revert("shopping needs to be open")
            // }
            // assert(shop.state == State.Open);

            console.log("owner: ", shop.ownerName);
            console.log("owner age: ", shop.ownerAge);
            console.log("owner adress: ", shop.ownerAdress);
            if(shop.state == State.Open){
                console.log("Shop is open");
            }else{
                console.log("Shop is closed");
            }

            shop.state = State.Closed;
            // emit to the event this string
            emit ShopState("Shop_Is_Closed");
        }
    }

}