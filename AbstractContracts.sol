pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Account {
    uint internal balance = 0;

    function getBalance() public view returns (uint) {
        return balance;
    }

    // virtual means that the function can be overwrited
    function getInterest() virtual public view {
        console.log('Account Type not defined');
    }
}

contract SavingAccount is Account {
    function getInterest() override public view {
        console.log("interest in 9%");
    }
}