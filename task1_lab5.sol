// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
 
contract Lab_4 {  
   constructor() {}
   function getResult(uint var1, uint var2) public pure returns(uint, uint ){
      uint result = var1 + var2;
      return Mystery(result);
   }
     
      function Mystery(uint _i) internal pure returns (uint result1, uint result2) {
    if (_i == 0) {
        result1 = 0;
        result2 = 1;
        return(result1,result2);
    }
    uint len = 8;
    while (_i > (2**len) - 1) {  // LOOP 1
        len += 8;
    }
    uint len_actual = len / 8;
    uint j = 2;
    uint small = 9999;
    while (j != _i) { // LOOP 2  
        if (_i % j == 0) {
            small = j < small ? j : small;  // POSITION 3 (Ternary Operator)
        }
        j++;
    }
    if (small == 9999) {  // POSITION 4
        small = 0;
    }
    result1 = _i << small;
    result2 = len_actual;
}

}
