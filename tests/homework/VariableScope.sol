// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract VariableScope {
    function privateFunction() private  pure  returns (string memory) {
            return "Private";
        }
        //internal （内部）
        function internalFunction() virtual internal  pure returns (string memory) {        
            return "Internal";
        }

            //external （外部）
            function externalFunction() virtual external  pure returns (string memory) {              
            return "external";
    }

    function publicFunction() virtual public  pure returns (string memory) {             
        return "Public";
    }
   

}