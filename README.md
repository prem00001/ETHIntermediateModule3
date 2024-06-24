# MyERCToken (PREMERC20)

MyERCToken (PRC) is an ERC-20 token smart contract implemented on the Ethereum blockchain. It provides basic functionalities of an ERC-20 token, allowing for transfers, allowances, and balance queries. This contract can be deployed and interacted with on the Ethereum mainnet or any Ethereum-compatible test network.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Deployment](#deployment)
- [Usage Examples](#usage-examples)
  - [Transferring Tokens](#transferring-tokens)
  - [Approving Allowances](#approving-allowances)
  - [Increasing Allowance](#increasing-allowance)
- [Contributing](#contributing)
- [License](#license)

## Overview

MyERCToken (PRC) is a basic ERC-20 token contract that includes functionalities such as transferring tokens between addresses, approving allowances for third-party spending, and allowing token holders to increase allowances.

- **Name**: PREMERC20
- **Symbol**: PRC
- **Decimals**: 21
- **Total Supply**: Initially set during deployment

## Features

- **Transfer Function**: Allows token holders to transfer tokens to other addresses.
- **Approve Function**: Enables token holders to approve another address to spend tokens on their behalf.
- **TransferFrom Function**: Allows approved addresses to transfer tokens on behalf of token holders.
- **IncreaseAllowance Function**: Allows token holders to increase the allowance granted to another address.

## Getting Started

### Prerequisites

Before deploying or interacting with the MyERCToken contract, ensure you have the following:

- Ethereum wallet (e.g., MetaMask) connected to an Ethereum node.
- Solidity compiler (e.g., Remix, Truffle) for compilation.
- Sufficient ETH to cover transaction fees.

### Deployment

To deploy the MyERCToken contract:

1. Clone this repository.
2. Compile the contract using a Solidity compiler.

3. Deploy the contract to an Ethereum network using your preferred method (e.g., Remix, Truffle, or manual deployment).


## Usage Examples

### Transferring Tokens

Example of transferring tokens between addresses:

```solidity
// Assuming token is an instance of MyERCToken contract
address recipient = 0xRecipientAddress;
uint256 amount = 100;

bool success = token.transfer(recipient, amount);
require(success, "Transfer failed");
```

### Approving Allowances

Example of approving another address to spend tokens on your behalf:

```solidity
// Assuming token is an instance of MyERCToken contract
address spender = 0xSpenderAddress;
uint256 allowanceAmount = 500;

bool success = token.approve(spender, allowanceAmount);
require(success, "Approval failed");
```

### Increasing Allowance

Example of increasing the allowance for a spender to spend tokens on your behalf:

```solidity
// Assuming token is an instance of MyERCToken contract
address spender = 0xSpenderAddress;
uint256 addedAllowance = 200;

bool success = token.increaseAllowance(spender, addedAllowance);
require(success, "Increase allowance failed");
```

## Contributing

Contributions to MyERCToken (PRC) are welcome! Feel free to fork this repository, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

This README provides an overview of your ERC-20 token contract `MyERCToken`, including its features, deployment instructions, usage examples, and information on how others can contribute. Adjust the addresses (`recipient`, `spender`, etc.) and values (`amount`, `allowanceAmount`, `addedAllowance`) according to your specific deployment and testing scenarios.
