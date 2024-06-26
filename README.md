# premERC20 Token Contract

## Overview

`premErc20` is a simple ERC20 token contract built using Solidity. This contract allows the deployment of an ERC20 token named "GODO" with the symbol "GD". The contract includes functionalities for minting new tokens, burning tokens, and transferring tokens.

## Features

- **ERC20 Token Standard**: Inherits from OpenZeppelin's ERC20 implementation.
- **Ownership**: Only the contract owner can mint new tokens.
- **Minting**: Allows the owner to mint new tokens to any address.
- **Burning**: Allows any token holder to burn their own tokens.
- **Transfer**: Standard ERC20 transfer functionality with a custom wrapper for decimal adjustments.

## Contract Details

### State Variables

- `address public owner`: Stores the address of the contract owner.

### Modifiers

- `onlyOwner`: Restricts access to certain functions to only the contract owner.

### Constructor

```solidity
constructor(uint256 initialSupply) ERC20("GODO", "GD") {
    owner = msg.sender;
    _mint(owner, initialSupply * 10 ** uint256(decimals()));
}
```

- Initializes the token with a given `initialSupply`.
- Sets the `owner` to the address that deploys the contract.
- Mints the initial supply of tokens to the owner.

### Functions

#### mint

```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount * 10 ** uint256(decimals()));
}
```

- Mints new tokens and assigns them to the specified `to` address.
- Only the contract owner can call this function.

#### burn

```solidity
function burn(uint256 amount) public {
    _burn(msg.sender, amount * 10 ** uint256(decimals()));
}
```

- Burns a specified `amount` of tokens from the caller's balance.
- Reduces the total supply of tokens.

#### transferAmount

```solidity
function transferAmount(address to, uint256 amount) public returns (bool) {
    return transfer(to, amount * 10 ** uint256(decimals()));
}
```

- Transfers a specified `amount` of tokens to the `to` address.
- Adjusts for decimals before transferring.

## Usage

### Deployment

1. Deploy the contract using your preferred method (e.g., Remix, Truffle, Hardhat).
2. Provide the `initialSupply` as a constructor argument.

### Minting Tokens

The contract owner can mint new tokens to any address using the `mint` function.

```solidity
mint(address to, uint256 amount);
```

### Burning Tokens

Any token holder can burn their own tokens using the `burn` function.

```solidity
burn(uint256 amount);
```

### Transferring Tokens

Tokens can be transferred using the standard ERC20 `transfer` function or the custom `transferAmount` function.

```solidity
transfer(address to, uint256 amount);
transferAmount(address to, uint256 amount);
```

## License

This project is licensed under the MIT License.
