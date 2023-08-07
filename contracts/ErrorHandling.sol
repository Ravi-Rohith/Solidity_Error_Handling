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