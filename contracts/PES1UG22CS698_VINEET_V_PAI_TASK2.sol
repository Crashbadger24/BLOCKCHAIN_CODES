// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathUtils {
    function power(uint256 base, uint256 exponent) public pure returns(uint256){
       uint temp=1;
        for(uint256 i=1;i<=exponent;i++)
        {
            temp*=base;
        }
        return temp;
    }
    function factorial(uint256 n) public pure returns(uint256) {
       uint256 temp=1;
        for(uint256 i=n;i>=1;i--)
        {
            temp*=i;
        }
        return temp;
    }
    function getContractBalance() public view returns (uint256)
    {
        return address(this).balance;
    }

    function modExp(uint256 base, uint256 exponent, uint256
modulus) public pure returns (uint256){
   uint temp=1;
        for(uint256 i=1;i<=exponent;i++)
        {
            temp*=base;
        }
        return temp%modulus;
}

   function gcd(uint256 a, uint256 b) public pure returns (uint256){
    while (b != 0) {
            uint256 temp = b;
            b = a % b;
            a = temp;
        }
        return a;
   }

   function isPrime(uint256 num) public pure returns (bool){
    if(num==0 || num==1)
    {
        return false;
    }
    uint256 count=0;
    for(uint256 i=2;i<=num;i++)
    {
         if(num%i==0)
         {
            count++;
         }
         if(count>1)
         {
            return false;
         }
    }
    return true;

   }
}