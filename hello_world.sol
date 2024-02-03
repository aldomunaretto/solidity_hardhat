// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract HelloWorld {
    string public message;

    function sayHelloWorld() public pure returns (string memory) {
        return "Hello, World!";
    }
}