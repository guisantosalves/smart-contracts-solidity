pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {
    string private welComeMessage;
    
    // construtor do smarst contract
    constructor() {
        welComeMessage = "Hello world";
    }

    function getMessage() public view returns (string memory){
        return welComeMessage;
    }
    
    function setMessage(string memory _msg) public {
        welComeMessage = _msg;
    }
}