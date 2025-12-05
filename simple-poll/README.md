# 🗳️ SimplePoll Smart Contract

This is a beginner Solidity smart contract that creates a very simple poll where anyone can vote **“Yes” or “No”**.  
Each address can only vote **once**, and the contract keeps track of all votes on the Ethereum blockchain.

---

## 💡 What I Learned

- How to create and use **mappings** to track information for each address.  
- How to use **if/else statements** to make basic logic decisions.  
- How to use **require()** to prevent invalid actions (like double voting).  
- The difference between **writing** data (costs gas) and **viewing** data (free).  
- How to test and interact with a contract using **Remix IDE**.

---

## 💻 How It Works

- `vote(bool _choice)`  
  → Casts a vote.  
  - `true` = “Yes”  
  - `false` = “No”  
  - Each address can only vote once.

- `getResults()`  
  → Returns the total number of **Yes** and **No** votes.

- `yesVotes()` and `noVotes()`  
  → Can also be called individually to see totals.

---

## 🧪 Example (Testing in Remix IDE)

1. Open [Remix IDE](https://remix.ethereum.org/).  
2. Paste in the `SimplePoll.sol` code.  
3. Compile the contract (Solidity compiler 0.8.30).  
4. Deploy it.  
5. Use the `vote(true)` or `vote(false)` buttons to cast a vote.  
6. Try calling `getResults()` to see the total votes.  
7. If you vote twice with the same account, Remix will show the error:  

---

## Next Steps / What I Aim to Learn

This was my first step into understanding how voting works on the blockchain.  
Next, I’d like to:

- Add a feature so only **certain addresses** can vote (access control).  
- Add **multiple choices** instead of just yes/no.  
- Record **who voted for what** using structs.  
- Emit **events** to log each vote on the blockchain.
