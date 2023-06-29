// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "SampleStorage.sol";

contract StorageFactory{
    SampleStorage[] public sampleStorageArray;

    function createSimpleStorageContract() public {
        SampleStorage sampleStorage = new SampleStorage();
        sampleStorageArray.push(sampleStorage);
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //to interact with a contract I'd Need
        //address  and ABI
        sampleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint _sampleStorageIndex) public view returns (uint256){
        return sampleStorageArray[_sampleStorageIndex].retrieve();
    }
}