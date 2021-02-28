pragma solidity 0.6.2;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@opengsn/gsn/contracts/BaseRelayRecipient.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

contract ERC20TransferHandler is BaseRelayRecipient{

    constructor(address _forwarder) public {
        trustedForwarder = _forwarder;
    }

    function versionRecipient() external virtual view override returns (string memory){ return "1";}

    function transfer(address token, address to, uint256 amount) external{
        require(IERC20(token).transferFrom(_msgSender(),to,amount));
    }

}