# FamilySimpleStorage

This is a simple Solidity smart contract that stores a family member’s favourite number and favourite word.  
It is a small learning project for practising how to use mappings and structs on the Ethereum blockchain.

---

## 🧠 What I Learned
- How to create and use **mappings** to link data to a name.
- How to use a **struct** to group multiple pieces of data together (number + word).
- How to **store** and **retrieve** data on the blockchain.
- The difference between writing data (which costs gas) and reading data (which is free).

---

## 💻 How It Works

- `setDetails(string _name, uint256 _favNumber, string _favWord)`  
  Stores both a favourite number and a favourite word for the given name.

- `getNumber(string _name)`  
  Returns the stored favourite number for that name.

- `getWord(string _name)`  
  Returns the stored favourite word for that name.

---

## Next Steps / What I Aim to Learn

I plan to keep improving this contract as I learn more Solidity features.  

Next, I want to try:

- Adding an **event** to log when someone updates their details.  
- Adding a function to **remove** a family member’s entry.  
- Deploying it to a **testnet** like Sepolia using Remix or Hardhat.  
- Learning about **access control** (so only certain addresses can update or delete data).  
- Experimenting with **more complex data structures** and mappings.
