// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "./MyToken.sol";
contract Reward {
    MyToken  immutable myToken ;
    // 构造函数中传入 SimpleToken 合约的地址
    constructor(MyToken  _myToken ) {
        myToken = _myToken;
    }
    // 调用 SimpleToken 合约的 transfer 函数来发送奖励
    function sendBonus(address user) public {
        myToken.transfer(user, 100);  // 向用户发送100个代币作为奖励
    }
}