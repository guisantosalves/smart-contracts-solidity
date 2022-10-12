pragma solidity >=0.7.0 <0.9.0;

// memories in solidity
// 1° Storage persist by smart contract
// 2° memory not persist
// 3° CallData 
// Stack

// private doesn't appear for nothing, only to his file
// internal is like private, but appear for contracts children
// external avaible out of the contract but not avaible inside the contract
// 

contract FirstContract {
    string private welComeMessage;
    
    // construtor do smarst contract
    constructor() {
        welComeMessage = "Hello world";
    }

    // getters and setters
    function getMessage() public view returns (string memory){
        return welComeMessage;
    }

    // view -> declare read only functions
    // pure -> declare read only functions but return a calculation as well

    function setMessage(string memory _msg) public {
        welComeMessage = _msg;
    }

    function getSum() public pure returns (uint) {
        return 2 + 2;
    }

    // payable function
    // sendet to smart contract
    function invest() public payable {

    }

    // smart contracts to recipient
    function transferMoney(address payable recipient) public {

    }

    //events -> notify the front-end
    event SomeEvent(string eventName);
}
