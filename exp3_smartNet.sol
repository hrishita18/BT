// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function getBalance() public view returns (uint256) {
        return address(owner).balance;
    }
}
