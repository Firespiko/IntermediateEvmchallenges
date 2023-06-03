/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Owner{
    address public owner;
    uint public password = 9870;
    
    constructor(){
        owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }
   
    modifier Onlyowner(uint _password){
        require(password== _password,"Incorrect Password");
        _;
    }

    function add(uint _a,uint _b,uint _c,uint _d) public Onlyowner(password) view returns (uint){
        return (_a +_b +_c +_d);
    }

    function mul(uint _a,uint _b,uint _c,uint _d) public Onlyowner(password) view returns (uint){
        return (_a * _b *_c *_d);
    }   
}
