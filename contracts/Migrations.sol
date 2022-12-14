// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.0;

contract Migration{
    address public owner = msg.sender;
    uint public last_completed_migration;

    modifier restricted(){
        require(
            msg.sender == owner,
            "This function is restricted to the contracts's owner"
        );
        _;
    }
    function setCompleted(uint completed) public restricted{
        last_completed_migration = completed;
    }
}