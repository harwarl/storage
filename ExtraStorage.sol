// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "storage/SampleStorage.sol";

contract ExtraStorage is SampleStorage {
    function store(uint256 _favouriteNumber) public override {
        favoriteNumber = _favouriteNumber + 5;
    }
}