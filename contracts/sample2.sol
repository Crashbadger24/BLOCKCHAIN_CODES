// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CheckingTernary{
    function checkNumber(uint _num) public pure returns (string memory ){
        return _num%2==0? "Even":"Odd";
    }
}