// SPDX-License-Identifier: MIT
 
pragma solidity ^ 0.8.0;
 
contract SimpleStorage {
    string public data;
   
    function set(string memory _data) public{
        data = _data;
    }
 
    function setNumber() public pure returns(uint){
        uint i = 5;
        uint j = 6;
        uint num = i * j;
        return num;
    }
    function get() view public returns (string memory){
        return data;
    }
}
