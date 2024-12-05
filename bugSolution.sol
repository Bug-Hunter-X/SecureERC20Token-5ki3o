```solidity
function transfer(address to, uint amount) public {
  uint256 senderBalance = balanceOf[msg.sender];
  require(senderBalance >= amount, "Insufficient balance");
  balanceOf[msg.sender] = senderBalance - amount; // Update balance before external call
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```