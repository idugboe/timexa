// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title Timexa (TMX)
/// @notice Fixed-supply ERC-20. The full supply is minted once to the deployer.
contract Timexa is ERC20, Ownable {
    uint256 public constant INITIAL_SUPPLY = 1_000_000_000 * 10 ** 18;

    constructor() ERC20("Timexa", "TMX") Ownable(msg.sender) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
