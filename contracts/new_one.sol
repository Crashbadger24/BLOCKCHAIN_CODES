// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageSample{
    //event Log(address sender , uint256 value , bytes data , bytes4 sig);

    function checkTx() public view returns (address ,uint){
        return (msg.sender , block.number);
    }
}