// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract mappingExample{
    mapping (address => uint) public zeFiMap; //mapping from address to uint

    function set(address _addr, uint _i) public {
        zeFiMap[_addr] = _i;
    }

    function get(address _addr) public view returns (uint){
        return zeFiMap[_addr];
    }

    function remove(address _addr) public {
        delete zeFiMap[_addr];
    }
}
