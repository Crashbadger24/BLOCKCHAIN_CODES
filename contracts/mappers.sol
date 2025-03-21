// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping {
// Mapping from address to uint
//mapping(key=> valuetype) access specifier name
mapping(address => uint256) public myMap;

function get(address _addr) public view returns (uint256) {
// Mapping always returns a value.
// If the value was never set, it will return the default value.
return myMap[_addr];
}

function set(address _addr, uint256 _i) public {
// Update the value at this address
myMap[_addr] = _i;
}

function remove(address _addr) public {
// Reset the value to the default value.
delete myMap[_addr];
}
}
//0xab8483f64d9c6d1ecf9b849ae677dd3315835cb2
//0x583031d1113ad414f02576bd6afabfb302140225
//