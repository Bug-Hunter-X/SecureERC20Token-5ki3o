# Reentrancy Vulnerability in ERC20 Transfer Function
This repository demonstrates a common reentrancy vulnerability in ERC20 token contracts and its solution. The vulnerable contract allows an attacker to drain funds by exploiting the reentrancy loophole in the transfer function.

## Vulnerable Code
The `bug.sol` file contains the vulnerable contract. The `transfer` function lacks the necessary checks to prevent reentrant calls, making it susceptible to attacks.

## Solution
The `bugSolution.sol` file provides a corrected version of the contract.  It uses the Checks-Effects-Interactions pattern to prevent reentrancy.  Specifically, it checks the balance before modifying it, performs the state change, and then interacts with external contracts or makes any further calls.

## How to reproduce
1. Compile the vulnerable contract using a Solidity compiler.
2. Deploy it to a testnet or private blockchain.
3. Interact with the contract using a reentrancy attack contract or script.

## Mitigation
This specific vulnerability is mitigated using the Checks-Effects-Interactions pattern. Always ensure that critical state modifications happen before any external calls within a function to avoid this type of attack.