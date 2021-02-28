//SPDX-License-Identifier: MIT
pragma solidity 0.7.3;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract VNCHRBetaSale{

    address paymentToken;
    address purchasedToken;
    uint index;
    uint MAX;
    uint NUMERATOR;
    uint DENOMINATOR;

    constructor(string memory _name,string memory _symbol,uint _MAX, uint _NUM, uint _DEN) public{
        MAX = _MAX;
        NUMERATOR = _NUM;
        DENOMINATOR = _DEN;
    }

    

}