// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;
import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";
import {OurToken} from "../src/OurToken.sol";

contract OurTokenTest is Test {
    OurToken public ourToken;
    DeployOurToken public deployer;
    uint256 public constant INITIAL_SUPPLY = 100 ether;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    function setUp() public {
        deployer = new DeployOurToken();

        ourToken = deployer.run();

        vm.prank(address(deployer));
        ourToken.transfer(bob, INITIAL_SUPPLY);
    }

    function testBobBalance() public view {
        assertEq(INITIAL_SUPPLY, ourToken.balanceOf(bob));
    }

    function testAllowanceWorks() public {
        uint256 initialAllowance = 1000;

        //Bob Approves alice on her behalf
        uint256 transferAmount = 100;
        vm.prank(bob);
        ourToken.approve(alice, initialAllowance);
        vm.prank(alice);
        ourToken.transferFrom(bob, alice, transferAmount);

      //  ourToken.transfer(bob, transferAmount);

      assertEq(transferAmount, ourToken.balanceOf(alice));
      assertEq(INITIAL_SUPPLY - transferAmount, ourToken.balanceOf(bob));
    }
}
