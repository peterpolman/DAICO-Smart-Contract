pragma solidity ^0.4.21;

import './token/TransferLimitedToken.sol';


contract OpenSocialCoin is TransferLimitedToken {
    uint256 public constant SALE_END_TIME = 1529138184; // Sat, 16 Jun 2018 10:36:24 +0200

    constructor(address _listener, address[] _owners, address manager) public
        TransferLimitedToken(SALE_END_TIME, _listener, _owners, manager)
    {
        name = "Open Social Coin";
        symbol = "OSC";
        decimals = 18;
    }
}
