//SPDX-License-Identifier: MIT
/**pragma solidity ^0.6.0;

import "./ERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


abstract contract AbstractItemToken is ERC20Metadata{

    address fixedToken;
    address variableToken;
    address creator;
    uint fixedTokenAmount;
    uint deadline;
    uint index;

    constructor
    (
        string memory _name,
        string memory _symbol,
        string memory _URI,
        address _fixedToken,
        address _variableToken,
        address _creator,
        uint _fixedTokenAmount,
        uint _deadline
        ) 
        ERC20Metadata(_name,_symbol,_URI,0) 
        public {
            fixedToken = _fixedToken;
            variableToken = _variableToken;
            creator = _creator;
            fixedTokenAmount = _fixedTokenAmount;
            deadline = _deadline;
        }
    
    modifier _notExpired(){
        require(block.timestamp<deadline,"ERROR deadline passed");
        _;
    }

    function b(uint index) public virtual view returns(uint price);
    function s(uint index) public virtual view returns(uint price);

    function buy(uint amount) _notExpired external{
        uint totalFixedToken = fixedTokenAmount*amount;
        uint totalVariableToken = 0;
        for (uint i = index; i < index + amount - 1; i++){
            totalVariableToken += b(i);
        }
        IERC20(fixedToken).transferFrom(msg.sender,address(this),fixedTokenAmount);
        IERC20(variableToken).transferFrom(msg.sender,address(this),variableTokenAmount);
        //emit event
    }

    function sell(uint amount) _notExpired external{
        require(amount <= index, "ERROR amount > total circulation");
        uint totalFixedToken = fixedTokenAmount*amount;
        uint totalVariableToken = 0;
        for (uint i = index-1; i >= index - amount; i--){
            totalVariableToken -= s(i);
        }
        IERC20(fixedToken).transfer(msg.sender,fixedTokenAmount);
        IERC20(variableToken).transfer(msg.sender,variableTokenAmount);
        //emit event
    }

    function refund(uint amount) external{
        uint totalFixedToken = fixedTokenAmount*amount;
        IERC20(fixedToken).transfer(msg.sender,fixedTokenAmount);
    } 

    function redeemProfit(){
        require(block.timestamp>deadline,"Error sale ongoing");
        // redeem
    }

    

    

    //function buy
    //function sell
    //creator address

}**/