// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract TinyVault {

    mapping(address => uint256) public deposited;

    event DepositedAmount(address indexed sender, uint256 amount);
    event WithdrawAmount(address indexed sender, uint256 amount);

    function myDeposit() public payable {
        require(msg.value > 0, "must send some ETH");
        deposited[msg.sender] += msg.value;
        emit DepositedAmount(msg.sender, msg.value);
    }

    function myWithdraw(uint256 amount) public {
        require(deposited[msg.sender] >= amount, "Not enough funds");
        deposited[msg.sender] -= amount;

        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Withdraw failed");

        emit WithdrawAmount(msg.sender, amount);
    }

    function viewMyVault() public view returns (uint256) {
        return deposited[msg.sender];
    }
}
