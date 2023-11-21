// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankContract {
    mapping(address => uint) public balances;

    function deposit(uint amount) public {
        require(amount > 0, "Deposit amount must be greater than 0");
        assert(balances[msg.sender] + amount >= balances[msg.sender]);
        balances[msg.sender] += amount;
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Withdrawal amount must be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient funds");
        assert(balances[msg.sender] - amount <= balances[msg.sender]);

        if (amount > 1000) {
            revert("Withdrawal amount too high");
        }

        balances[msg.sender] -= amount;
    }
}
