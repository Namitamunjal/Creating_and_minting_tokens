
//For this project, you will write a smart contract to create your own token on a local HardHat network. 
//Once you have your contract, you should be able to use remix to interact with it.
// From remix, the contract owner should be able to mint tokens to a provided address. 
//Any user should be able to burn and transfer tokens.



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract smart_Contract_Token {

    uint public totalSupply;


    mapping(address => uint) public balanceOf;
    // It is a mapping that associates an Ethereum address with its corresponding token balance.
    mapping(address => mapping(address => uint)) public allowance;
    //It is a nested mapping that keeps track of the approved token allowances. 
    
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner of this contract has access to call this function.\n");
        _;
    }

    constructor(uint _initialSupply) {
        //The constructor initializes the contract's state variables.
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;
        owner = msg.sender;
    }

    function mint(address sent_to, uint value) public onlyOwner {
        //This function allows the contract owner to mint new tokens and assign them to the specified address
        require(sent_to != address(0), "The entered address is invalid.");
        balanceOf[sent_to] += value;
        totalSupply += value;
        
    }

    function burn(uint value) public {
        //This function allows any token holder (sender) to burn a specific number of their own tokens, effectively reducing the total token supply.
        require(balanceOf[msg.sender] >= value, "No sufficient balance was found.");
        balanceOf[msg.sender] -= value;
        totalSupply -= value;
        
    }

    function transfer(address sent_to, uint value) public {
        //This function allows any token holder to transfer a specific number of their own tokens to another address
        require(sent_to != address(0), "The entered address is invalid.");
        require(balanceOf[msg.sender] >= value, "No sufficient balance was found.");
        balanceOf[msg.sender] -= value;
        balanceOf[sent_to] += value;
        
    }
}
