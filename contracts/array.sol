// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraySoln{
    //datatype[size(optional)] scope array_name;
    uint[] public array = [1,2,3,4];
    function print() public view returns (uint) {
        return array.length;
    }

    function setvalue(uint value) public{
        array.push(value);
    }
       function popper() public {
          array.pop();
    }
    function setvalue(uint value, uint index) public{
        //array.push(value);
        require(index<array.length,"Index out of bound");
        array[index]=value;
    }


    //array.pop()remove the last element of the array
    //delete array[index]
    //if array size is mentioned we cant use push function
}