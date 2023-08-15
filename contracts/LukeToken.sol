// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract LukeToken is ERC20, ERC20Capped, ERC20Burnable{
    address payable public owner;

    constructor(uint256 cap) ERC20("LukeToken", "LKT") ERC20Capped(cap * (10 ** decimals())) {
        owner = payable(msg.sender);
        _mint(owner, 7 * (10 ** 6) * (10 ** decimals()));
    }

    function _mint(address account, uint256 amount) internal virtual override(ERC20, ERC20Capped) {
        _mint(account, amount);
    }
}