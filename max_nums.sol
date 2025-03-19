// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayMax{
    uint[] public array = [1,2,3,4];
    function setvalue(uint value) public{
        array.push(value);
    }
    function getmax() public view returns(uint){
        require(array.length > 0, "Array is empty");

        uint max = array[0]; // Initialize max with the first element
        for (uint i = 1; i < array.length; i++) {
            if (array[i] > max) {
                max = array[i]; // Update max if a larger value is found
            }
        }
        return max;
    }
}