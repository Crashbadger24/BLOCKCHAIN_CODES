// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RemainderCalculator {
    
    function nthTerm(uint n, uint a, uint b, uint c) public pure returns (uint) {
        require(n > 0, "n must be greater than 0");
        if (n == 1) return a;
        if (n == 2) return b;
        if (n == 3) return c;
        
        uint term1 = a;
        uint term2 = b;
        uint term3 = c;
        uint nextTerm;
        
        for (uint i = 4; i <= n; i++) {
            nextTerm = term1 + term2 + term3;
            term1 = term2;
            term2 = term3;
            term3 = nextTerm;
        }
        
        return nextTerm;
    }
}