// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "./IVault.sol";
contract Bank is IVault{
    mapping(address => uint256) public balances;
    mapping(address => uint256) public onwer;
     
      constructor() {
        balances[msg.sender] = 1000;  // 初始化代币余额
        onwer[msg.sender] = 500;
    }
    function save(address recipient,uint256 amount) public  override  returns (uint256,uint256){ 
            // require(balances[msg.sender] >= amount, "Insufficient balance");
            balances[msg.sender] += amount;
           
            //balances[msg.sender] += amount;
            onwer[recipient] -= amount;
           return (onwer[msg.sender],balances[recipient]);
    } 
   function withdraw(address recipient,uint256 amount) public  override   returns (uint256,uint256){ 
          balances[msg.sender] -= amount;
          
            //balances[msg.sender] += amount;
            onwer[recipient] += amount;
             return (onwer[msg.sender],balances[recipient]);
            
    }
    function getUserAmout() public view  returns(uint256){
        return onwer[msg.sender];
    }

        function getBankAmout() public view  returns(uint256){
        return balances[msg.sender];
    }
}
