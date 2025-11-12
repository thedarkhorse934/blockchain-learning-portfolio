# 🏦 FamilyEthSavings Smart Contract

A simple Ethereum smart contract that allows family members to deposit and withdraw ETH from their personal savings pool.

## Features
- Deposit ETH using `deposit()` (automatically tracks sender)
- Withdraw ETH using `withdraw()` safely
- Track balances per address
- Event logging for deposits and withdrawals
- Optional balance check with `checkBalance()`

## Solidity Concepts Learned
- `msg.sender` and `msg.value`
- `payable` functions
- Mappings
- Events
- Safe ETH transfer with `call`
- Input validation with `require()`

## Deployment
- Network: Not yet deployed (to be deployed on Sepolia Testnet)
- Planned tools: Remix IDE + MetaMask + Sepolia test ETH


## Future Improvements
- Limit deposits/withdrawals to family members only
- Add total savings tracker
- Add withdrawal time limits or goals

