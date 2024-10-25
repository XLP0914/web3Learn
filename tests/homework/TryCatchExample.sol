// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract TryCatchExample {

    function ood() public pure returns (uint256 sum){
    for (uint i = 1; i < 101; i++){
            if(i%2==1){
                sum=sum +i;  
            }
    }
          return sum;
        }
    



    }