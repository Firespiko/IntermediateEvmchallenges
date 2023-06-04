// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract functions{

    uint public x = 5;
    uint  public amount = 0;

    function addpure(uint z,uint y) public pure returns(uint) {
        return z + y; //We cannot use the state variables in this function since it is declared as pure.  
    }

    function addview(uint y) public view returns(uint){
        return x + y; ////We can use the state variables in this function since it is declared as view. 
    }

    function payMeMoney() public payable{
        amount += msg.value;
    }
}
