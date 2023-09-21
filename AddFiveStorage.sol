// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // + 5
    // virtual override

    function store(uint256 _newNumber) public override {
        myfavouriteNumber = _newNumber + 5;
    }
}