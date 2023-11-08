# ErrorContract

## Overview

The `ErrorContract` is a simple Solidity smart contract that demonstrates the usage of `require()`, `assert`, and `revert` statements. It includes functions that perform basic operations and use these statements to handle different scenarios.

## Contract Details

### Functions

#### `setValue(uint256 _newValue)`

- Description: This function allows the owner to set a new value for the `value` variable.
- Parameters:
  - `_newValue` (uint256): The new value to set. It must be greater than zero.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.
- Revert Conditions:
  - If `_newValue` is not greater than zero.

#### `assertsample(uint256 a, uint256 b)`

- Description: This function demonstrates the use of `assert` statement by checking if the sum of two numbers `a` and `b` equals 30.
- Parameters:
  - `a` (uint256): The first number for addition.
  - `b` (uint256): The second number for addition.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.
- Revert Conditions:
  - If the sum of `a` and `b` is not equal to 30.

#### `revertsample(uint256 input)`

- Description: This function showcases the use of `revert` statement with a conditional check based on the input value.
- Parameters:
  - `input` (uint256): The input value to check.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.
- Revert Conditions:
  - If `input` is not greater than 10.
  - If `input` is even.
