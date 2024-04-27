

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.22;

contract ManualToken {
    



    function name() public view returns (string memory) {
        return "Manual Token";
    }


    function totalSupply() public view returns (uint256) {
        return 1000000;
    }
}