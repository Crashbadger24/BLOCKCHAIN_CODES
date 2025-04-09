// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Creating a contract
contract eventExample {
/*

event eventname(address indexed from, address indexed to , uint indexed amount);
funtion name (arguments) accessspecifiers modfiers emit
emit
*/
// Declaring state variables
uint256 public value = 0;

// Declaring an event
event Increment(address owner);

// Defining a function for logging event
function getValue(uint _a, uint _b) public {
emit Increment(msg.sender);
value = _a + _b;
}
}