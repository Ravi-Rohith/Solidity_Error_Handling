// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract counter{
    uint public count=0;
    function inc() external {
        count+=1;
    }

    function dec() external {
        count-=1;
    }
}