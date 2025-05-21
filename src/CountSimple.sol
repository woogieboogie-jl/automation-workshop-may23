// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CountSimple {
    event CountedBy(address indexed msgSender);

    uint256 public counted = 0;

    constructor() {}

    function performUpkeep() external {
        counted += 1;
        emit CountedBy(msg.sender);
    }
}
