// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicMath{
    uint256 public math1=24;
    int256 public math = -23;
    bool public values=true;
     function add(int256 a, int256 b) public pure returns (int256) {
        return a + b;
    }
    function multiply(uint256 a , uint256 b) public pure returns(uint256)
    {
        return a*b;
    }
    function isEven(uint256 num )public pure returns(bool){
        return num%2==0;
    }
}