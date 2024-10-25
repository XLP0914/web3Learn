// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract VisibilityExample {
        function privateFunction() private pure returns (string memory) {
            return "Private";
        }

        function internalFunction() internal pure virtual returns (string memory) {        
            return "Internal";
        }

            function externalFunction() external pure returns (string memory) {              
            return "external";
    }

        function publicFunction() public pure returns (string memory) {             
        return "Public";
    }
    function addAndMult(uint256 a, uint256 b) public pure returns(uint256  add,uint256 mult){
        add=a + b;
        mult=a*b;
        return (add,mult);
    }




}