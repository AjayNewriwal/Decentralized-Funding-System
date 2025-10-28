// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Decentralized Funding System
 * @dev A simple crowdfunding smart contract that allows people to fund projects.
 * Funds can be withdrawn by the project owner once the goal is met.
 */
contract Project {
    address public owner;
    uint256 public fundingGoal;
    uint256 public totalFunds;
    bool public goalReached;

    mapping(address => uint256) public contributions;

    event Funded(address indexed contributor, uint256 amount);
    event GoalReached(uint256 totalFunds);
    event Withdrawn(address indexed owner, uint256 amount);

    constructor(uint256 _goal) {
        owner = msg.sender;
        fundingGoal = _goal;
    }

    // Function 1: Contribute ETH to the project
    function contribute() external payable {
        require(msg.value > 0, "Contribution must be greater than 0");
        contributions[msg.sender] += msg.value;
        totalFunds += msg.value;
        emit Funded(msg.sender, msg.value);

        if (totalFunds >= fundingGoal && !goalReached) {
            goalReached = true;
            emit GoalReached(totalFunds);
        }
    }

    // Function 2: Withdraw funds (only owner and only if goal reached)
    function withdraw() external {
        require(msg.sender == owner, "Only project owner can withdraw");
        require(goalReached, "Funding goal not reached yet");
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to withdraw");

        (bool success, ) = payable(owner).call{value: balance}("");
        require(success, "Withdrawal failed");

        emit Withdrawn(owner, balance);
    }

    // Function 3: Get individual contributor’s total contribution
    function getContribution(address contributor) external view returns (uint256) {
        return contributions[contributor];
    }
}
