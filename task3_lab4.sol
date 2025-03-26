// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DistinctElements {
    
    function distinct(uint[] memory array, uint length) public pure returns (uint) {
        require(array.length == length, "Array length does not match the provided length");

        if (length == 0) {
            return 0;
        }

        
        sort(array);

        uint distinctCount = 1;
        for (uint i = 1; i < length; i++) {
            if (array[i] != array[i - 1]) {
                distinctCount++;
            }
        }

        return distinctCount;
    }

    
    function sort(uint[] memory array) private pure {
        uint length = array.length;
        for (uint i = 0; i < length; i++) {
            for (uint j = i + 1; j < length; j++) {
                if (array[i] > array[j]) {
                    (array[i], array[j]) = (array[j], array[i]);
                }
            }
        }
    }
}