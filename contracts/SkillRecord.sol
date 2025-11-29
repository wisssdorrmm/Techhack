// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SkillRecord {
    struct Record {
        string name;
        string description;
        string skill;
        uint256 date; // Changed to uint256 for timestamp
        address wallet;
    }

    Record[] private records; // Changed to private for better encapsulation

    event RecordCreated(
        string name,
        string description,
        string skill,
        uint256 date,
        address wallet);

    function createRecord(
        string memory _name,
        string memory _description,
        string memory _skill,
        uint256 _date // Changed to uint256 for timestamp
    ) public {
        records.push(Record(_name, _description, _skill, _date, msg.sender));
        emit RecordCreated(_name, _description, _skill, _date, msg.sender); // Emit event
    }

    function getRecords() public view returns (Record[] memory) {
        return records;
    }
}