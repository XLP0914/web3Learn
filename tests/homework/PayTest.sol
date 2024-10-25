// SPDX-License-Identifier: MIT
   pragma solidity ^0.8.11;
 
 contract Bank1{
     address public immutable onwner;
     event Deposit(address _ads,uint256 amount);
     event Withdraw(uint256 amount);
     
     receive() external payable{
         //0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB
         emit Deposit(msg.sender,msg.value);
     }  
     constructor(){
         onwner = msg.sender;
     }
     function withdraw() external {
         require(msg.sender == onwner,"Not owner address");
         emit Withdraw(address(this).balance);
         selfdestruct (payable(msg.sender));
     }
     function getBalance() external view returns(uint256){
         return address(this).balance;
     }
     
     
 }