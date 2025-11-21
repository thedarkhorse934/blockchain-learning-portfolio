// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title JMTK-Token
/// @notice Basic ERC-20 token for learning purposes
/// @dev Built using OpenZeppelin ERC20

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @notice Simple ERC20 using OpenZeppelin with burn + owner mint
contract MyJMTKToken is ERC20, ERC20Burnable, Ownable {

    uint256 public constant MAX_SUPPLY = 2_000_000 * 10 ** 18; // Maximum total tokens allowed

    constructor() ERC20("JMToken", "JMTK") Ownable(msg.sender) {
        // Mint initial supply to deployer
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }

    /// @notice Owner-only mint function
    function mint(address to, uint256 amount) external onlyOwner {
        require(totalSupply() + amount <= MAX_SUPPLY, "Cap exceeded");
        _mint(to, amount);
    }
}
