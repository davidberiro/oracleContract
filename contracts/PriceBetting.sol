pragma solidity ^0.4.4;

import "./Ownable.sol";
import "./usingOraclize.sol";

contract PriceBetting is usingOraclize, Ownable {
  
  //for development purposes, should be deleted once deployed
  function PriceBetting() {
    OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
  }
  
  uint public currentPrice;
  uint internal roundNumber = 0;
  uint public share = 0.0001 ether;
  
  event newOraclizeQuery(string description);
  event newPrice(string price);
  
  function __callback(bytes32 myid, string result) {
    if (msg.sender != oraclize_cbAddress()) throw;
    newPrice(result);
    currentPrice = parseInt(result, 2); // let's save it as $ cents
  }
  
  function update() payable {
    newOraclizeQuery("Oraclize query was sent, standing by for the answer..");
    oraclize_query("URL", "xml(https://www.fueleconomy.gov/ws/rest/fuelprices).fuelPrices.diesel");
  }
  
}
