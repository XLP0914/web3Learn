// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "./Person.sol";
import "./Emloyee.sol";
contract Manager is Person,Emloyee{
    function study() override  public pure returns (uint256) {
        return 1;
    }
}