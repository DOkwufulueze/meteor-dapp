pragma solidity ^0.4.0;

contract Welcome {
  address public owner;

  function Welcome() {
    owner = msg.sender;
  }

  function greet() constant returns (string) {
    return "Hello!";
  }
  
  function kill() {
      if (msg.sender == owner) selfdestruct(owner);
  }
}
