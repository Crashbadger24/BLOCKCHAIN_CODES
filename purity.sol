// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint public x=10;

    function getX() public view returns (uint256){
        //x=x+1;
        return x; 
    }

    function simple () public returns(uint256){
        x=x+1;
        return x;
    }

    function adder(uint256 a , uint256 b) public pure returns (uint256){
        return a+b; // pure function no state variable interaction
    }
}

