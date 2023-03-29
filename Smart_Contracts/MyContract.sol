//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    // State Variables
    int256 public myInt = 1;
    uint256 public myUint = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello World";
    bytes32 public myBytes32 = "Hello World";

    address public myAddress = 0x9a27934320a4442cEB4c3a93b3f2E308f0aCea99;

    struct MyStruct {
        uint myUint256;
        string myString;    
    }

    MyStruct public myStruct = MyStruct(1, "Hello World");

    // Local Variables
    function getValue() public pure returns (uint256) {
        uint256 value = 1;
        return value;
    }   
}
