// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
    address public owner;
    address private charityAddr;

    constructor(address _charityAddr) {
        owner = msg.sender;
        charityAddr = _charityAddr;
    }

    function tip() public payable {
        (bool success, ) = owner.call{value: msg.value}("");
        require(success, "Transfer failed");
    }

    function donate() public {
        (bool success, ) = charityAddr.call{value: address(this).balance}("");
        require(success, "Transfer failed");
    }

    receive() external payable {}
}
