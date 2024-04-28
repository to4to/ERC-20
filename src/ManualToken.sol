

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.22;

contract ManualToken {
    

mapping (address => uint) private s_balances;

    function name() public view returns (string memory) {
        return "Manual Token";
    }


    function totalSupply() public view returns (uint256) {
        return 100 ether;
    }


    function decimals() public pure returns (uint8) {
        return 18;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return s_balances[_owner];
    }
}