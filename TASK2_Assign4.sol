// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    address public admin;
    mapping(string => uint256) public votesReceived;
    
    
    event VoteCast(
        address indexed voter,
        string candidate
    );

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    
    function vote(string memory _candidate) public {
        require(bytes(_candidate).length > 0, "Candidate name cannot be empty");
        votesReceived[_candidate] += 1;
        emit VoteCast(msg.sender, _candidate);
    }

    
    function getVotes(string memory _candidate) public view returns (uint256) {
        return votesReceived[_candidate];
    }

    
    function resetVotes(string memory _candidate) public onlyAdmin {
        require(bytes(_candidate).length > 0, "Candidate name cannot be empty");
        votesReceived[_candidate] = 0;
    }
}