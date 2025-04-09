// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DonationTracker {
    address public owner;
    string public purpose;

    mapping(address => uint) public balances;

    event DonationReceived(address indexed donor, uint amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor(string memory _purpose) {
        owner = msg.sender;
        purpose = _purpose;
    }

    function donate() public payable {
        require(msg.value > 0, "Donation must be greater than 0");
        balances[msg.sender] += msg.value;
        emit DonationReceived(msg.sender, msg.value);
    }

    function updatePurpose(string memory _newPurpose) public onlyOwner {
        purpose = _newPurpose;
    }
}

contract FallbackDonation is DonationTracker {
    event FallbackTriggered(address sender, uint value, bytes data);

    constructor(string memory _purpose) DonationTracker(_purpose) {}

    receive() external payable {
        balances[msg.sender] += msg.value;
        emit DonationReceived(msg.sender, msg.value);
    }

    fallback() external payable {
        emit FallbackTriggered(msg.sender, msg.value, msg.data);
    }
}
