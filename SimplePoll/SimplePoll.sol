// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimplePoll {

    uint256 public yesVotes;
    uint256 public noVotes;

    mapping(address => bool) public hasVoted;

    // Function to vote: true = yes, false = no
    function vote(bool _choice) public {
        require(!hasVoted[msg.sender], "You have already voted.");

        hasVoted[msg.sender] = true;

        if (_choice) {
            yesVotes += 1;
        } else {
            noVotes += 1;
        }
    }

    // View total votes
    function getResults() public view returns (uint256, uint256) {
        return (yesVotes, noVotes);
    }
}
