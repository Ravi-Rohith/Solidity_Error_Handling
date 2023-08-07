# Error Handling
This Solidity program is a Error Handling program that demonstrates the basic syntax and functionality of error handling in the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to learn how to handle errors and solidity and get familiar with the Solidity language.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract demonstrates the functionality of three basic error handling statements. This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public x = 10;

    function useRequire(uint256 y) public view returns (uint256) {
        // Use require to check a condition and revert if it's not met
        require(y != 0, "Cannot divide by zero");
        return x / y;
    }

    function useAssert(uint256 z) public view returns (uint256) {
        // Use assert to check an internal consistency and revert if the condition is false
        uint256 result = x - z;
        assert(result >= 0);
        return result;
    }

    function useRevert(uint256 w) public pure returns (string memory) {
        // Use revert to explicitly revert the transaction with a custom error message
        if (w > 100) {
            revert("Value cannot exceed 100");
        }
        return "Transaction successful";
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the any of the 3 functions. Click on the "ErrorHandling" contract in the left-hand sidebar, and then click on any function that you would like to call in the contract. Finally, click on the "transact" button to execute the function and retrieve the appropriate result or error message.

## Authors

A Ravi Rohith

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
