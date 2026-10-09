// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ETHIK is ERC20, Ownable {
    constructor() ERC20("ETHIK", "ETHIK") Ownable(msg.sender) {
        // Initial mint: 10 million tokens
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

// Recovered from the original project source file in October 2026.
// The source has not yet been bytecode-verified against the deployed contract.
