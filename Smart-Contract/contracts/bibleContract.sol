pragma solidity ^0.4.0;
contract bibleContract {
    uint amount;

    function setAmount(uint x) public {
        amount = x;
    }

    function getAmount() public constant returns (uint) {
        return amount;
    }
}
