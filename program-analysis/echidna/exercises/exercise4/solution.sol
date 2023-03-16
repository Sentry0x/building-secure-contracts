// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.3;

import "./token.sol";

/// @dev Run the solution with
///      ```
///      solc-select use 0.5.3
///      echidna program-analysis/echidna/exercises/exercise4/solution.sol --contract TestToken --test-mode assertion
///      ```
contract TestToken is Token {
    function transfer(address to, uint256 value) public {
        uint256 oldBalanceFrom = balances[msg.sender];
        uint256 oldBalanceTo = balances[to];

        super.transfer(to, value);

        assert(balances[msg.sender] <= oldBalanceFrom);
        assert(balances[to] >= oldBalanceTo);
    }
}
