// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraySum{
    uint[] public array = [1,2,3,4];
    function setvalue(uint value) public{
        array.push(value);
    }
    function sum() public view returns(uint)
    {
        uint summer =0;
        for(uint i=0;i<array.length;i++)
        {
            summer = summer + array[i];
        }
        return summer;
    }
}