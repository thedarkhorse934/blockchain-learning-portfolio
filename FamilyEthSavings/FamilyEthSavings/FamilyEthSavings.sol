// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FamilyEthSavings {

    mapping(address => uint256) public ethSavingsAmounts; // Track ETH savings per address

    // Event to log deposits and withdrawals
    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    // Deposit ETH into your personal savings
    function deposit() public payable {
        require(msg.value > 0, "Must deposit some ETH");
        ethSavingsAmounts[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    // Withdraw ETH from your personal savings
    function withdraw(uint256 amount) public {
        require(ethSavingsAmounts[msg.sender] >= amount, "Insufficient funds");

        ethSavingsAmounts[msg.sender] -= amount;

        // Send ETH back to the caller
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");

        emit Withdrawal(msg.sender, amount);
    }

    // Optional: Check your balance
    function checkBalance() public view returns (uint256) {
        return ethSavingsAmounts[msg.sender];
    }
}
