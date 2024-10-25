// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
interface IVault {
    function save(address recipient,uint256 amount)  external  returns (uint256,uint256);
    function withdraw(address recipient,uint256 amount) external   returns (uint256,uint256);
}