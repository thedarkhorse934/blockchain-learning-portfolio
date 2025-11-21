# JMTK-Token 🚀 — Advanced ERC-20 Token Project

This project contains a professional ERC-20 token built with OpenZeppelin contracts, designed as a follow-on from the **MyOZToken** learning project.

---

## Overview 📝

**JMTK-Token** is an ERC-20 token with the following features:

- ✅ Fully compatible with OpenZeppelin ERC-20 standards  
- 👑 Initial supply minted to the deployer at deployment  
- 🛠️ Owner-only minting: the deployer can mint additional tokens  
- 🔥 Burnable by any token holder  
- 📄 Clean, professional header with SPDX license and metadata  
- 💻 Designed for easy extension to testnets or mainnet deployment  

This project demonstrates a clean, production-ready approach for ERC-20 tokens while remaining simple and educational.

---

## Features & Usage

### Deploying

1. Open [Remix IDE](https://remix.ethereum.org/) or use Hardhat locally.
2. Compile `NewToken.sol` with Solidity compiler version `^0.8.30`.
3. Deploy using Remix VM, MetaMask, or a Hardhat script.
4. The deployer will automatically receive the initial token supply.

### Interacting with the Token

- `balanceOf(address)` — Check token balances.
- `transfer(to, amount)` — Transfer tokens to another address.
- `burn(amount)` — Burn your own tokens.
- `mint(to, amount)` — Owner-only function to mint additional tokens.

---

## Next Steps

- Write unit tests using Hardhat / Chai for mint, burn, and transfers.
- Deploy to a testnet (Sepolia, Goerli) and verify on Etherscan.
- Extend token with advanced features (e.g., max supply cap, staking, or governance mechanics).

---

## Author & Repository

- **Author:** thedarkhorse934
- **Portfolio:** [(https://github.com/thedarkhorse934)]
- **Repository:** [https://github.com/thedarkhorse934/blockchain-learning-portfolio/tree/main]

---

## Notes

- This project is primarily educational and demonstrates how to build clean, reusable ERC-20 tokens using OpenZeppelin.  
- Minting is restricted to the owner; use with caution if deploying on public networks.
