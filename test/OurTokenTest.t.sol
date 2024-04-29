// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;
import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";
import {OurToken} from "../src/OurToken.sol";

contract OurTokenTest is Test {
    OurToken public ourToken;
    DeployOurToken public deployer;


address bob=makeAddr("bob");
address alice=makeAddr("alice");

    function setUp() public {
        deployer = new DeployOurToken();

        ourToken = deployer.run();
    }
}
