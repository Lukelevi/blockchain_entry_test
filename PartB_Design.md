# Part B: Design Document

**Section 1: SkillsMarketplace (Agricultural Marketplace)**

**Section 2: SecureLottery (DeFi & NFT Integration)**

---

## WHY I BUILT IT THIS WAY

### 1. Data Structure Choices
**Explain your design decisions for BOTH contracts:**
- When would you choose to use a `mapping` instead of an `array`?
- How did you structure your state variables in `SkillsMarketplace` vs `SecureLottery`?
- What trade-offs did you consider for storage efficiency?

[1. `Mapping`: When we need to map (key-value) a user to their Private key or some important value of some sort.
`Array`: Make use of this data structure to pop/remove unconfirmed transactions to a transactions `array` before being confirmed via consensus and then added to a block `array`

 2. 

 3. 
]

---

### 2. Security Measures
**What attacks did you protect against in BOTH implementations?**
- Reentrancy attacks? (Explain your implementation of the Checks-Effects-Interactions pattern)
- Access control vulnerabilities?
- Integer overflow/underflow?
- Front-running/Randomness manipulation (specifically for `SecureLottery`)?

[Write your response here]

---

### 3. Trade-offs & Future Improvements
**What would you change with more time?**
- Gas optimization opportunities?
- Additional features (e.g., dispute resolution, multiple prize tiers)?
- Better error handling?

[Write your response here]

---

## REAL-WORLD DEPLOYMENT CONCERNS

### 1. Gas Costs
**Analyze the viability of your contracts for real-world use:**
- Estimated gas for key functions (e.g., `postGig`, `selectWinner`).
- Is this viable for users in constrained environments (e.g., high gas fees)?
- Any specific optimization strategies you implemented?

[Write your response here]

---

### 2. Scalability
**What happens with 10,000+ entries/gigs?**
- Performance considerations for loops or large arrays.
- Storage cost implications.
- Potential bottlenecks in `selectWinner` or `applyForGig`.

[My research managed to cover Layer 2 dilemma which involves Rollups which are bundled transactions stored off-chain, proof is then posted on-chain. 
- I also managed to Cold storage devise i.e. IPFS, Filecoin, and Arweave and hot storage which is connected to the internet. Layer 2 dilema is finding a balance between Scalability, Security, and Decentralizaton]

---

### User Experience

**How would you make this usable for non-crypto users?**
- Onboarding process?
- MetaMask alternatives?
- Mobile accessibility?

[-UX/UI designers need to make easy to navigate and hide the complexity from users.
- Metamask alternatives include mobile apps (dApps)
- Make use of exchanges like Crypto.com]

---

## MY LEARNING APPROACH

### Resources I Used

**Show self-directed learning:**
- Documentation consulted
- Tutorials followed
- Community resources

[The resources used include:
- Alchemy University
- Learn X and Y
- Alchemy ]

---

### Challenges Faced

**Problem-solving evidence:**
- Biggest technical challenge
- How you solved it
- What you learned

[ - Grasping the syntaxt fully. I think I needed more and more practice.
- Making sense out of the whole code logic before making changes. Written the code I understood
- Everything code logic requires security practices as well as its static approach. I figured that Solidity is combination of both Python and Java.
]

---

### What I'd Learn Next

**Growth mindset indicator:**
- Advanced Solidity patterns
- Testing frameworks
- Frontend integration

[- Static typing like Java
- N/A
- This involves dAPPs (Decentralized web app) with a custom frontend and a smart-contract backend
]

---
