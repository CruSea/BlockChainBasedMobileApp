var BibleContract = artifacts.require("./bibleContract.sol");

module.exports = function(deployer) {
    deployer.deploy(BibleContract);
};