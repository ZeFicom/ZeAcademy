// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract zeFiToken is ERC20{

    address public owner;

    constructor() ERC20("ZeFi Token",'ZFI'){
        _mint(msg.sender, 10000000000 * 10 ** 18);
        owner = msg.sender;
    }

    function mintZeFiTokens(address _to, uint _amount) external {
        require(msg.sender == owner, "Only Owner can mint the Tokens");
        _mint(_to, _amount);
    }
    function burnZeFiTokens(uint _amount) external {
        _burn(msg.sender,_amount);
    }
}
