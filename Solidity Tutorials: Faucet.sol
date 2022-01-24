// SPDX-License-Identifier: MIT
// The SPDX license identifiers are added at the top of the smart contract file.It shows how we verify contracts importing other contracts
 
pragma solidity ^0.8.0;  // version of the solidity compiler the program was written for.
 
//Our Smart contract
contract Faucet {
    //Accept any incoming amount
    receive () external payable{}
 
    //Function that Sends eth to anyone who asks for it
    function Withdraw(uint256 withdraw_amount) public{
 
        //Sets a limit to the withdrawal amount
        require(withdraw_amount <= 100000000000000000);
 
        //sends the message to the address that requested it.
        payable(msg.sender).transfer(withdraw_amount);
    }
}
