// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
// create the contract.
contract Counter {
    uint public count;
 
    // create a function to get the current count
    function getCounter() public view returns(uint) {
        return count;
    }
    //create function to increament the count by 1
    function increament() public {
        count += 1;
    }
    // create the function to decrement the count by 1.
    function decreament() public{
        count -= 1;
    }
}
