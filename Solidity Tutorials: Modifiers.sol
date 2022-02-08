// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract ModifierSample{
   
    address public owner;
 
    constructor() {
        owner = msg.sender;
    }
    function onlyOwner() public view  {
        require(msg.sender == owner,'Not Owner');
    }
    function validAddress(address _addr) public pure {
        require(_addr != address(0),'Not Valid Address');
    }
    function changeOwner(address _newOwner) public  {
        onlyOwner();
        validAddress(_newOwner);
 
        owner = _newOwner;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract ModifierSample{
   
    address public owner;
 
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner,'Not Owner');
        _;
    }
    modifier validAddress(address _addr) {
        require(_addr != address(0),'Not Valid Address');
        _;
    }
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner)  {
        owner = _newOwner;
    }
}

