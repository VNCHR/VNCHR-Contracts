//SPDX-License-Identifier: MIT
pragma solidity 0.7.3;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenConverter{

    IERC20 oldToken;
    IERC20 newToken;

    constructor(address _OT, address _NT){
        oldToken = IERC20(_OT);
        newToken = IERC20(_NT);
    }

    function convert(uint amount) external{
        oldToken.transferFrom(msg.sender,address(0), amount);
        newToken.transfer(msg.sender, amount);
    }

}