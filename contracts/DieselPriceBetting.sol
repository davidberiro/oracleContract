pragma solidity ^0.4.4;

import "./Ownable.sol";
import "./usingOraclize.sol";

contract DieselPriceBetting is usingOraclize, Ownable {
  
  function DieselPriceBetting() {
    OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
  }
  
  uint public DieselPriceUSD;
  
  event newOraclizeQuery(string description);
  event newDieselPrice(string price);
  
  function __callback(bytes32 myid, string result) {
    if (msg.sender != oraclize_cbAddress()) throw;
    newDieselPrice(result);
    DieselPriceUSD = parseInt(result, 2); // let's save it as $ cents
    // do something with the USD Diesel price
  }
  
  function update() payable {
    newOraclizeQuery("Oraclize query was sent, standing by for the answer..");
    oraclize_query("URL", "xml(https://www.fueleconomy.gov/ws/rest/fuelprices).fuelPrices.diesel");
  }
  
}
