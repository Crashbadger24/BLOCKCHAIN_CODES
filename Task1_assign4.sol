// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaskManager {
    
    address public admin;

    
    constructor() {
        admin = msg.sender;
    }

    
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    
    string[] public tasks;

    
    function addTask(string memory _task) public onlyAdmin {
        tasks.push(_task);
    }

    
    function deleteTask(uint index) public onlyAdmin {
        require(index < tasks.length, "Index out of bounds");

        
        tasks[index] = tasks[tasks.length - 1];
        tasks.pop();
    }

    
    function getAllTasks() public view returns (string[] memory) {
        return tasks;
    }
}
