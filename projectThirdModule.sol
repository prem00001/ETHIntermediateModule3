// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract premErc20 is ERC20 {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor(uint256 initialSupply) ERC20("GODO", "GD") {
        owner = msg.sender;
        _mint(owner, initialSupply * 10 ** uint256(decimals()));
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount * 10 ** uint256(decimals()));
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount * 10 ** uint256(decimals()));
    }

    function transferAmount(address to, uint256 amount) public returns (bool) {
        return transfer(to, amount * 10 ** uint256(decimals()));
    }
}
