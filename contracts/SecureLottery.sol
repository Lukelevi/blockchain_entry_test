// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title SecureLottery
 * @dev An advanced lottery smart contract with security features
 * @notice PART 2 - Secure Lottery (MANDATORY)
 */
contract SecureLottery {
    
    address public entries; // Will store my players tickets here
    address public owner;
    uint256 public lotteryId;
    uint256 public lotteryStartTime;
    bool public isPaused;
    uint256 public constant MIN_VALUE = 0.1;
    // How will you store player information?
    address[] public playerInformation;
    //Track user amount
    mapping(address => uint256) public userAmount;

    //Track entries
    address[] public playerEntries;

    //Track unique players
    mapping(address => bool) private hasEntry;
    uint256 public uniquePlayers; 
    
    constructor() {
        owner = msg.sender;
        lotteryId = 1;
        lotteryStartTime = block.timestamp;
        isPaused = false;
    }
    
    // TODO: Implement entry function
    // Requirements:
    // - Players pay minimum 0.01 ETH to enter
    // - Track each entry (not just unique addresses)
    // - Allow multiple entries per player
    // - Emit event with player address and entry count
    function enter() public payable {
        require(msg.value >= MIN_ENTRY, "A minimum of 0.1 ETH is required")

        for (uint256 i = 0; i < playerEntries; i++) {
            playerEntries.push(msg.value)
        }
        userAmount[msg.sender] += msg.value
    
    // TODO: Implement winner selection function
    // Requirements:
    // - Only owner can trigger
    // - Select winner from TOTAL entries (not unique players)
    // - Winner gets 90% of pot, owner gets 10% fee
    // - Use a secure random mechanism (better than block.timestamp)
    // - Require at least 3 unique players
    // - Require lottery has been active for 24 hours
    function selectWinner() public {
        // Your implementation here
        // CHALLENGE: How do you generate randomness securely?
        // Consider: blockhash, block.difficulty, etc.
    }
    
    // TODO: Implement circuit breaker (pause/unpause)
    // Requirements:
    // - Owner can pause lottery in emergency
    // - Owner can unpause lottery
    // - When paused, no entries allowed
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this");
        _;
    }
    
    modifier whenNotPaused() {
        require(!isPaused, "Contract is paused");
        _;
    }
    
    function pause() public onlyOwner {
        // Your implementation
    }
    
    function unpause() public onlyOwner {
        // Your implementation
    }
    
    // TODO: Implement reentrancy protection
    // CRITICAL: Prevent reentrancy attacks when sending ETH
    // Use checks-effects-interactions pattern
    
    // TODO: Helper/View functions
    // - Get current pot balance
    // - Get player entry count
    // - Check if lottery is active
    // - Get unique player count
    
    // BONUS: Add multiple prize tiers (1st, 2nd, 3rd place)
    // BONUS: Add refund mechanism if minimum players not reached
}
