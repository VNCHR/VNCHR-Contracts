//SPDX-License-Identifier: MIT
pragma solidity 0.7.3;

import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";
import "./ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VNCHRTokenMetaTx is ERC20Capped,Ownable,ERC20Permit{
    
    constructor() ERC20("VNCHR","VNCHR") ERC20Capped(5000000) ERC20Permit("VNCHRTokenMetaTx") public{}

    function mint(address to,uint amount) external onlyOwner{
        _mint(to,amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20Capped,ERC20) {}
}