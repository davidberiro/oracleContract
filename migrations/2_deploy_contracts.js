var PriceBetting = artifacts.require("./PriceBetting.sol");
module.exports = function(deployer) {
  deployer.deploy(PriceBetting);
};