// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FamilyEthSavings {

    mapping(address => uint256) public ethSavingsAmounts;

    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    function deposit() public payable {
        require(msg.value > 0, "Must deposit some ETH");
        ethSavingsAmounts[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) public {
        require(ethSavingsAmounts[msg.sender] >= amount, "Insufficient funds");
        ethSavingsAmounts[msg.sender] -= amount;

        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");

        emit Withdrawal(msg.sender, amount);
    }

    function checkBalance() public view returns (uint256) {
        return ethSavingsAmounts[msg.sender];
    }
}
