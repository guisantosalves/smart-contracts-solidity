pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Transaction {
    // getting money in smart contract
    function getMoney() external payable{

        // use address(this).balance -> to get current money receive from smartContract
        console.log('Amount receive:', address(this).balance);
    }

    // transfer money to contract to another user
    function TransferMoney(address payable recipient) external{
        
        // recipient -> get the address that I want to send
        recipient.transfer(address(this).balance);
        console.log('amount left:', address(this).balance);
    }
}
