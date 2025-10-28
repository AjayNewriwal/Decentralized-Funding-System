# Decentralized Funding System

## 🪙 Project Description
The **Decentralized Funding System** is a blockchain-based crowdfunding platform that enables anyone to raise and contribute funds in a transparent and trustless way. Project creators can set funding goals, and contributors can support projects directly with Ether (ETH).

Funds are released only when the goal is reached, ensuring security and fairness for both creators and contributors.

---

## 🌍 Project Vision
To create a **fully transparent, decentralized crowdfunding ecosystem** that empowers innovators, startups, and communities by removing intermediaries and ensuring that funds are handled securely on-chain.

---

## ✨ Key Features
- **Transparent Contributions:** Every funding transaction is stored immutably on the blockchain.
- **Goal-Based Payouts:** Funds can only be withdrawn when the project’s target is met.
- **Contributor Tracking:** Each contributor’s total donation is easily accessible.
- **Trustless & Secure:** No middlemen or centralized control over funds.

---

## ⚙️ Core Smart Contract Functions
1. **`contribute()`** – Allows users to send ETH to fund the project.  
2. **`withdraw()`** – Enables the project owner to withdraw funds once the goal is met.  
3. **`getContribution(address)`** – Returns how much a particular address has contributed.

---

## 🧩 Deployment Info
- **Solidity Version:** `^0.8.20`
- **Network:** Ethereum / Testnets (e.g., Sepolia, Goerli)
- **Recommended Tools:** Hardhat, Truffle, or Foundry

Example (Hardhat Deployment):
```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network sepolia


<img width="1423" height="714" alt="{103BEB8A-E44B-441C-95A5-9FC297658A9E}" src="https://github.com/user-attachments/assets/ca246978-25e2-48d0-9441-9d20207ce6a9" />
