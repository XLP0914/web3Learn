// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
// 实现接口的合约
import "./MyToken.sol";
contract SimpleToken is MyToken {
    mapping(address => uint256) public balances;
    constructor() {
        balances[msg.sender] = 1000;  // 初始化代币余额
    }
    // 实现接口中的 transfer 函数
    function transfer(address recipient, uint256 amount) public override {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }
}