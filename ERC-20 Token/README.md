# 🪙 ERC-20 Token Contracts

This repository contains two ERC-20 token implementations written in Solidity:

1. **MyERC20.sol** — A manually written, minimal ERC-20 token  
2. **MyOZToken.sol** — A production-ready ERC-20 built using OpenZeppelin contracts  

The goal of this project is to understand how ERC-20 tokens work under the hood while also providing a secure and industry-standard implementation using OpenZeppelin.

---

## 🔹 MyERC20.sol — Minimal ERC-20 Token

`MyERC20.sol` is a simplified ERC-20 implementation built from scratch for learning purposes.  
It includes:

- `name`, `symbol`, and `decimals`
- `totalSupply`
- `balanceOf` mapping
- `allowance` mapping
- `transfer`, `approve`, `transferFrom`
- Standard ERC-20 events

### ✔️ Features

- Implements core ERC-20 logic manually
- Easy to read and understand
- Good for learning how ERC-20 works internally

### ⚠️ Limitations

This contract is **not recommended for production** because:

- It lacks advanced safety features
- No access control or ownership
- No extras like burn, pause, permit, etc.

---

## 🔹 MyOZToken.sol — OpenZeppelin ERC-20

`MyOZToken.sol` is a professional ERC-20 token using the trusted **OpenZeppelin Contracts** library.

It imports:

```solidity
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
