// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

contract LukeToken is ERC20Capped {
    address payable public owner;

    constructor(uint256 cap) ERC20("LukeToken", "LKT") ERC20Capped(cap * (10 ** decimals())) {
        owner = payable(msg.sender);
        _mint(owner, 7 * (10 ** 6) * (10 ** decimals()));
    }
}