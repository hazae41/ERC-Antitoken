pragma solidity ^0.8.0;

import "./Antitoken.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract Debt is Antitoken, Ownable {
    constructor() Antitoken("Debt", "DBT") { }
    
    /**
     * Create amount of debt for the receiver.
     **/
    function indebt(address receiver, uint amount) public onlyOwner {
        _mint(receiver, amount);
    }
}
