pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

// car has a chassis, chassis has a chassis number

contract Car {
    Chassis private chassis;
    
    constructor(Chassis _chassis){
        chassis = _chassis;
    }

    function getCarChNumber() public view returns (string memory){
        return chassis.getChassisNo();
    }
}


contract Chassis {
    string private chassisNo;
    
    constructor(string memory _chassisNo){
        chassisNo = _chassisNo;
    }

    // view -> read only
    function getChassisNo() public view returns (string memory) {
        return chassisNo;
    }
}