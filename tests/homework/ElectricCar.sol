// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
 import "./Car.sol";
contract ElectricCar is Car {
   uint256 batteryLevel;
    
    function drive() public override  pure returns (string memory) {
        return "driver";
    }

}