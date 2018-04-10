pragma solidity ^0.4.4;

import "./PriceBetting.sol";

contract MatchingBetters is PriceBetting {
  
  struct Offer {
    address buyer;
    uint round;
    uint amount;
  }
  
  struct Bet {
    address buyerOfUpShare;
    address buyerOfDownShare;
    uint round;
    uint amount;
    uint32 upSharePrice;
    uint32 downSharePrice;
  }
  
  Bet[] public bets;
  
  
}