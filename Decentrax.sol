pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Decentrax is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Decentrax(address _owner)  UpgradeableToken(_owner) {
    name = "Decentrax";
    symbol = "DCX";
    totalSupply = 2500000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}