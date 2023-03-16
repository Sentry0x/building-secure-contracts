// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.3;

import "./token.sol";

/// @dev Run the solution with
///      ```
///      solc-select use 0.5.3
///      echidna program-analysis/echidna/exercises/exercise1/solution.sol
///      ```
contract TestToken is Token {
    address echidna = msg.sender;

    constructor() public {
        balances[echidna] = 10000;
    }

    function echidna_test_balance() public view returns (bool) {
        return balances[echidna] <= 10000;
    }
}
