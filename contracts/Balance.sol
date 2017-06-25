pragma solidity ^0.4.0;

contract Balance {
  uint balance;
  
  function setBalance(uint newBalance) {
    balance = newBalance;
  }
  
  function testBalance() constant returns (string, uint, bool) {
    if (balance == 0) return ("Zero Balance, no WEI", balance, false);
    if (balance > 0) return ("OK! Check out our doctors...", balance, true);
    return ("Invalid balance", balance, false);
  }
}

contract Tester {
  Balance balance;
  
  function Tester(address addressString) {
    balance = Balance(addressString);
  }
  
  function supplyBalance(uint suppliedBalance) {
    balance.setBalance(suppliedBalance);
  }
}
