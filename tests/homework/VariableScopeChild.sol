// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "./VariableScope.sol";
contract VariableScopeChild is VariableScope {//继承
   
   function clickd() public  pure returns (string memory){
       string memory a= internalFunction();
       string memory b= publicFunction();
       string memory c= string.concat(a,b); //字符串拼接
       return c;
   }

}