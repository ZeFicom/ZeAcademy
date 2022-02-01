// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract ZeFiBank {

    mapping(address => uint) public balanceOf;
    address public owner;

    constructor ()  payable{
        owner = msg.sender;
    }

    function depositFunds(uint _amount) public payable returns (uint)  {
        require(msg.sender == owner);
        balanceOf[msg.sender] += _amount;
        return balanceOf[msg.sender];
    }
    function _transeferCall(address _from, address _to, uint _amount) private {
        balanceOf[_from] -= _amount;
        balanceOf[_to] += _amount;
    } 

    function transferFunds(address _receipient, uint _amount) public {
        require(balanceOf[msg.sender]>= _amount,"Insufficient Funds in the account!!");
        require(msg.sender != _receipient, "you cannot send money to yourself");
        _transeferCall(msg.sender, _receipient, _amount);
    }

    function withdrawFunds(uint _amount) public returns (uint){
        require(balanceOf[msg.sender] >= _amount);
        balanceOf[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        return balanceOf[msg.sender];
        
    }
    
}
