// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0;
import "./TryCatchExample.sol";
contract TryAndcatch {
 TryCatchExample example =new TryCatchExample();
        function aa() public  view returns (string memory){
            string memory result= "";
            try example.ood() returns (uint256) {
                // 处理成功
                
                result = "success";
                 
            } catch {
                result = "error";
            // 处理失败
            }
             return result;
        }
    }