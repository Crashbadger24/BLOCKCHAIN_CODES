// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVarsTest {
// Function to check the caller&#39;s address
function getSender() public view returns (address) {
return msg.sender; // Returns the address of the function caller
}
// Function to check the amount of ETH sent
function getValue() public payable returns (uint256) {
return msg.value; // Returns the Ether sent with the transaction
}
// Function to check the current block number
function getBlockNumber() public view returns (uint256) {
return block.number; // Returns the current block number
}
// Function to check the timestamp of the block
function getTimestamp() public view returns (uint256) {
return block.timestamp; // Returns the timestamp of the current block
}
}