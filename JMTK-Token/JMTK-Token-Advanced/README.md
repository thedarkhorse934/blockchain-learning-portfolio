# 💰 JMTK Token — Advanced ERC-20 Token  

**Mintable • Burnable • Snapshot • Permit • Role-Based Access Control**

JMTK is a professional ERC-20 token built using OpenZeppelin standards.  
It is designed for portfolio use, smart contract learning, testnet deployment, and governance experimentation.

This token extends the base ERC-20 standard with advanced features such as snapshots, minting with role controls, burning, capped supply, and gasless approvals (permit).

---

## 🚀 Features

### 🔹 Mintable (with MAX SUPPLY)
- Initial supply: **1,000,000 JMTK**
- Maximum supply: **2,000,000 JMTK**
- Only addresses with `MINTER_ROLE` can mint.
- Prevents inflation and enforces a hard cap.

### 🔹 Burnable
Any holder can burn their own tokens using:

```solidity
burn(amount);
```

Useful for:
- Deflationary models  
- Token sinks  
- Reducing total supply  

### 🔹 Role-Based Access Control (AccessControl)
Roles included:

| Role | Purpose |
|------|---------|
| `DEFAULT_ADMIN_ROLE` | Full permissions, can assign/revoke roles |
| `MINTER_ROLE` | Can mint new tokens |
| `SNAPSHOT_ROLE` | Can trigger snapshots |

This replaces the typical `Ownable` pattern with a more flexible permission system.

### 🔹 Snapshots (ERC20Snapshot)
Snapshots allow you to record balances and supply **at a specific block number**.

Useful for:
- Governance voting  
- Airdrops  
- Dividends  
- Accounting  
- Preventing airdrop farming  

Take a snapshot:

```solidity
snapshot();
```

Check past balances:

```solidity
balanceOfAt(address, snapshotId);
```

### 🔹 Gasless Approvals (ERC-2612 Permit)
Users can set allowances using **signatures instead of on-chain transactions**.

This enables:
- Better UX  
- Zero-gas approvals  
- DEX integrations  
- DeFi-style workflows  

---

## 📦 Tech Stack
- Solidity **0.8.30**
- OpenZeppelin **v5+**
- Works with **Hardhat**, **Remix**, or **Foundry**

---

## 📥 Deployment

Deploy without constructor parameters.

After deploying:
- Deployer is assigned:
  - `DEFAULT_ADMIN_ROLE`
  - `MINTER_ROLE`
  - `SNAPSHOT_ROLE`
- Deployer receives **1,000,000 JMTK**

---

## 🔧 Role Management

Grant MINTER role:

```solidity
grantRole(MINTER_ROLE, 0xADDRESS);
```

Grant SNAPSHOT role:

```solidity
grantRole(SNAPSHOT_ROLE, 0xADDRESS);
```

Remove a role:

```solidity
revokeRole(MINTER_ROLE, 0xADDRESS);
```

Self-renounce:

```solidity
renounceRole(DEFAULT_ADMIN_ROLE, YOUR_ADDRESS);
```

---

## 📸 Snapshots

Take a snapshot:

```solidity
uint256 id = snapshot();
```

Query historical balances:

```solidity
balanceOfAt(account, id);
```

---

## 🧮 Supply Utilities

Remaining mintable supply:

```solidity
remainingMintable();
```

Total supply:

```solidity
totalSupply();
```

---

## 🧱 Contract Overview

JMTK includes:

- ERC20
- ERC20Burnable
- ERC20Snapshot
- ERC20Permit
- AccessControl
- MAX_SUPPLY (2,000,000)
- Initial Mint (1,000,000)

---

## 📘 Use Cases

### ✔ Governance tokens  
Snapshots + roles = perfect for voting logic.

### ✔ Airdrops  
Prevent manipulation by using historical balances.

### ✔ Portfolio-level smart contract  
Shows advanced token engineering skills.

### ✔ Learning advanced Solidity  
Covers:
- Hooks  
- Roles  
- Extensions  
- Supply caps  
- ERC-2612 permit  

---

## 🤝 Contributing
Pull requests and issues are welcome!

---

## 📄 License
MIT License.

