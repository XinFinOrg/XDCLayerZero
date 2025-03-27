// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { XDCOFT } from "../XDCOFT.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTMock is XDCOFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) XDCOFT(_name, _symbol, _lzEndpoint, _delegate) {}

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}
