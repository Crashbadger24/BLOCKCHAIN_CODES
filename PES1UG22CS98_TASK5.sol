// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TicketReservation {
    address payable public owner;
    uint256 public ticketPrice;
    uint256 public totalSupply; 
    uint256 public ticketsSold; 
    mapping(address => uint256) public ticketsReserved;

    constructor(uint256 _ticketPrice, uint256 _totalSupply) {
        owner = payable(msg.sender);
        ticketPrice = _ticketPrice;
        totalSupply = _totalSupply; 
    }

    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    // Function to reserve tickets
    function reserveTicket(uint256 numTickets) external payable {
        require(numTickets > 0, "Number of tickets must be greater than 0");
        require(ticketsSold + numTickets <= totalSupply, "Not enough tickets left"); 

        unchecked {
            require(msg.value >= ticketPrice * numTickets, "Insufficient funds sent"); 
        }

        ticketsReserved[msg.sender] += numTickets;
        ticketsSold += numTickets; // Track total tickets sold

       
        uint256 totalCost = ticketPrice * numTickets;
        if (msg.value > totalCost) {
            payable(msg.sender).transfer(msg.value - totalCost);
        }
    }

    
    function getTicketsReserved(address user) external view returns (uint256) {
        return ticketsReserved[user];
    }

    
    function withdrawFunds() external onlyOwner {
        require(address(this).balance > 0, "No funds available for withdrawal");
        owner.transfer(address(this).balance);
    }

    // Function to set ticket price
    function setTicketPrice(uint256 price) external onlyOwner {
        require(price > 0, "Price must be greater than 0");
        ticketPrice = price;
    }
}