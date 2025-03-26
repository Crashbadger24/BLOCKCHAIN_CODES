// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RemainderCalculator {
    function find(int a) public pure returns (int) {
        require(a > 0, "a must be greater than 0");
        return a % 3;
    }
}