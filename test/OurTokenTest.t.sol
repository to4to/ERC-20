// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;
import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol"; 

contract OurTokenTest is Test{


    function setUp() public override {
        // deploy contract
        new OurToken(100 ether);
    }

}