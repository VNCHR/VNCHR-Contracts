//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./ERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ItemToken is Ownable{

    address[] public componentTokenAddresses;
    uint[] public componentTokenAmounts;
    uint deadline;

    constructor
    (
        string memory _name,
        string memory _symbol,
        string memory _URI,
        address[] memory _componentTokenAddresses,
        uint[] memory _componentTokenAmounts,
        uint _deadline
        ) 
        ERC20Metadata(_name,_symbol,_URI,0) 
        public {
           componentTokenAddresses = _componentTokenAddresses;
           componentTokenAmounts = _componentTokenAmounts;
           deadline = _deadline;
        }

}