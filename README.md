SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setValue(uint256 _newValue) public onlyOwner {
        require(_newValue > 0, "Value must be greater than zero");
        value = _newValue;
    }

    function assertsample(uint256 a, uint256 b) public view onlyOwner {
        assert(a + b == 30);
    }

    function revertsample(uint256 input) public view onlyOwner {
        require(input > 10, "Input must be greater than 10");

        if (input % 2 == 0) {
            revert("Input is even, so transaction is reverted");
        }
    }
}
