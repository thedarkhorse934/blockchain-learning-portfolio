# TinyVault – Simple ETH Deposit & Withdrawal Contract

TinyVault is a beginner-friendly Ethereum smart contract written in Solidity.  
It allows users to **deposit ETH**, track their **individual balances**, and **withdraw** their funds safely.

This project is part of my **blockchain-learning-portfolio** and is designed to help build foundational skills in smart-contract development.

---

## ✨ Features

- Deposit ETH into your personal vault  
- Withdraw your own ETH  
- View your individual balance  
- Events emitted for deposits and withdrawals  
- Basic checks to prevent invalid actions  

---

## 🧠 What I Learned

- How to store balances using a `mapping`
- How to handle ETH transfers with `msg.value`
- How to use `require` for validation
- How to emit events for better contract visibility
- How to safely send ETH using `.call{value: amount}("")`

This project helped reinforce fundamentals of Solidity and state-handling.

---

## 🛠️ Functions Overview

### `myDeposit()`
Deposits ETH into the contract and updates the sender’s stored balance.

### `myWithdraw(uint256 amount)`
Withdraws ETH *up to the user’s deposited amount* using a safe low-level call.

### `viewMyVault()`
Returns the caller’s current balance stored in the vault.

---

## 🚀 Future Improvements

- Add a pause mechanism for safety  
- Add an emergency withdraw function  
- Include unit tests (Hardhat or Foundry)  
- Add a simple frontend dApp  

---

## 📚 License

This project is licensed under the **MIT License**.

