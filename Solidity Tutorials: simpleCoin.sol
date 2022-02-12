// SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.7.0 <0.9.0;
 
contract Coin {
    address public owner;
    mapping(address=> uint ) public balanceOf;
 
    event Sent(address from, address to,uint amount);
 
    constructor(){
        owner = msg.sender;
    }
 
    modifier onlyOwner{
        require(owner == msg.sender,"Not Owner");
        _;
    }
 
    function mintCoin(address _to,uint _amount) public onlyOwner{
        require(_amount <= 1e18);
        balanceOf[_to] += _amount;
    }
    function sendCoin(address _to, uint _amount) public {
        require(_amount <= balanceOf[owner],"Insufficient balance");
        balanceOf[owner] -= _amount;
        balanceOf[_to] += _amount;
        emit Sent(owner,_to,_amount);
    }
}
