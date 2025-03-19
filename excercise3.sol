// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DurationClause {
    uint public CalendarDaysDuration;
    address public Owner;
    bool public Active;
    uint public DurationLimit;

    // Constructor to initialize the contract
    constructor(uint _calendarDaysDuration, uint _durationLimit) {
        require(_calendarDaysDuration <= _durationLimit, "Initial duration exceeds limit");
        CalendarDaysDuration = _calendarDaysDuration;
        DurationLimit = _durationLimit;
        Owner = msg.sender;
        Active = true;
    }

    // Modifier to restrict function access to the contract owner
    modifier onlyOwner() {
        require(msg.sender == Owner, "Only the contract owner can modify this");
        _;
    }

    // Function to set the duration (only owner can modify)
    function SetDuration(uint durationInCalendarDays) public onlyOwner {
        require(durationInCalendarDays <= DurationLimit, "Duration exceeds the limit");
        CalendarDaysDuration = durationInCalendarDays;
    }

    // Getter function to return the current CalendarDaysDuration
    function GetDuration() public view returns (uint) {
        return CalendarDaysDuration;
    }

    // Getter function to return the maximum DurationLimit
    function GetDurationLimit() public view returns (uint) {
        return DurationLimit;
    }
}
