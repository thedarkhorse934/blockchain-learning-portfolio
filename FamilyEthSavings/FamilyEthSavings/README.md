# 🏦 FamilyEthSavings Smart Contract

A simple Ethereum smart contract that allows family members to deposit and withdraw ETH from their own savings balance.

---

## 🧩 Features
- Deposit ETH using `deposit()` (automatically tracks sender)
- Withdraw ETH using `withdraw()` safely
- Track balances per address
- Event logging for deposits and withdrawals
- Check balance with `checkBalance()`

---

## 🧠 What I Learned
- How `msg.sender` and `msg.value` work
- Payable functions for receiving ETH
- Safe transfers using `.call`
- Events and `require()` validation

---

## 🚀 Deployment
- Network: Sepolia Testnet *(planned)*
- Tools: Remix IDE + MetaMask + Sepolia test ETH
- [Etherscan link to be added after deployment]

---

## 💬 Future Improvements
- Family-only access control
- Savings goals and limits
- Time-locked withdrawals
