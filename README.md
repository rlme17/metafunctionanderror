# BankContract Solidity Smart Contract

## Overview

The `BankContract` is a simple Ethereum smart contract written in Solidity that simulates a basic banking system allowing users to deposit and withdraw funds. It keeps track of user balances and includes functionalities for depositing and withdrawing Ethereum tokens.

## Functionalities

### Deposit Function

The `deposit` function enables users to deposit a specified amount of Ethereum tokens into the contract. It validates that the deposit amount is greater than zero and ensures no overflow occurs during the addition of funds.

### Withdraw Function

The `withdraw` function allows users to withdraw Ethereum tokens from their account within the contract. It verifies that the withdrawal amount is greater than zero and that the user has sufficient funds. Additionally, it limits the withdrawal amount to a maximum of 1000 tokens to prevent excessively high withdrawals.

## Usage

The contract exposes the following functions:

- `deposit(uint amount)`: Allows users to deposit tokens into their account.
- `withdraw(uint amount)`: Permits users to withdraw tokens from their account within certain limits.

## License

This smart contract is released under the MIT License. For more information, please see the `LICENSE` file.

## Disclaimer

Please note that this contract is for educational purposes and should not be used in a production environment without appropriate security audits and modifications.
