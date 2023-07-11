// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract HelloWorld{
    string public mystring = "Hello World";

    function display() public  view {
        mystring;

    }
}
contract arrays{
    uint[] public nums = [1,2];
    
    function example() external {
        nums.push(3);
    }
}