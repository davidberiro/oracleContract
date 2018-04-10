pragma solidity ^0.4.4;

import "./PriceBetting.sol";

contract MatchingBetters is PriceBetting {
  
  
  
  struct Bet {
    address buyerOfUpShare;
    address buyerOfDownShare;
  }
  
  Bet[] public bets;
  
  
}