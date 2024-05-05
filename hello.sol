// SPDX-License-Identifier: MIT

/* solidity version ^ lets newer versions of solidity run*/
pragma solidity ^0.8.18; 

/*starting a ontract */
contract SimpleStorage {
    /* Basic data types in solidity: boolean, uint, int, address, bytes */

    uint256 favNum; // defaults to 0 if not assigned
    

    /*
    * store - assigns a value to favnum
    * _favNum - argument (value to give favnum)
    */

    function store(uint256 _favNum) public {
        favNum = _favNum;
    }

}
/* 0xd9145CCE52D386f254917e481eB44e9943F39138 *///address of contract
