// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract Array {
    uint [] public zeFiarray;

    function get(uint _i) public view returns(uint){
        return zeFiarray[_i];
    }
    function getArr() public view returns (uint[] memory){
        return zeFiarray;
    }
    function push(uint _i) public {
        zeFiarray.push(_i);
    }
    function pop() public {
        zeFiarray.pop();
    }
    function remove(uint _index) public { 
        delete zeFiarray[_index];
    }
    
}
