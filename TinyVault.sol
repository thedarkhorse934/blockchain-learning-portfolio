// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// A super simple ETH vault contract where users
// can deposit and withdraw their own ETH.
contract TinyVault {

    // Track how much ETH each address has deposited
    mapping(address => uint256) public balances;

    // Events help track deposits/withdrawals on-chain
    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);

    // Deposit ETH into the vault
    function deposit() public payable {
        require(msg.value > 0, "Send some ETH");
        balances[msg.sender] += msg.value;

        emit Deposit(msg.sender, msg.value);
    }

    // Withdraw a specified amount
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Not enough balance");

        // Update internal balance first (security best practice)
        balances[msg.sender] -= amount;

        // Send ETH back to user
        (bool sent, ) = msg.sender.call{value: amount}("");
        require(sent, "Withdraw failed");

        emit Withdraw(msg.sender, amount);
    }

    // Read-only helper to check the user's vault balance
    function myBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}


