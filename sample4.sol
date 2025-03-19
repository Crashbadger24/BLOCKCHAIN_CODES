// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireExample {
    uint public minDeposit = 1 ether;
    function deposit () public payable {
        require(msg.value >= minDeposit, "MINIMUM 1 ETH REQUIRED");
        //function continues if condition is met 
    }
    uint public balance ;
    function addBalance(uint amount) public {
       balance+=amount;
       assert(balance >= amount);
    }

    mapping(address=>uint) public balances;

    function withdraw(uint amount) public {
        if(amount>balances[msg.sender]){
            revert("Insufficient balance");
        }
        balances[msg.sender] -= amount;
    }
}