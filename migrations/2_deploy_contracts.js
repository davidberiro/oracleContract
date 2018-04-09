var DieselPriceBetting = artifacts.require("./DieselPriceBetting.sol");
module.exports = function(deployer) {
  deployer.deploy(DieselPriceBetting);
};