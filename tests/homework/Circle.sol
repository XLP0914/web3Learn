// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "./Shape.sol";
contract Circle is Shape{
    function area() override pure public returns(string memory){
        return "Circle";
    }
}