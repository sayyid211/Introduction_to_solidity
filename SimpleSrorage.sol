// SPDX-License-Identifier: MIT

/* solidity version '^' lets newer versions of solidity run*/
pragma solidity ^0.8.18; 

/*starting a ontract */
contract SimpleStorage {
    /* Basic data types in solidity: boolean, uint, int, address, bytes */

    uint256 public myfavNum; // defaults to 0 if not assigned
    /* Declare an array of numbers*/
    //uint256[] favNumsList;
    /* we can have a custom type using the struct key word
    giving us meaningful details of objects
    */
    struct person{
        uint256 favNum;
        string name;
    }

    /* we could then declare a variable of the custom type
     * type must be specified in both declaration and assignment of value
     */

     //person public Carl = person{11, "Carl"}; // auto indexing, values use 0 indexing
     //person public Aliya = person({favNum: 7, name: "Aliya"}); // specifying the index

     /*assigning individual objects is tedeous, we could instead use array of persons*/
    person [] public listOfPersons; // []
    

    /* mapping type- Abid-> 7 */
    mapping(string => uint256) public nameToFavoriteNumber;
    

    /* function to push person object to array */
    function addPerson(string memory _name, uint256 _favNum) public {
        listOfPersons.push(person(_favNum, _name));
        nameToFavoriteNumber[_name] = _favNum;
    }



    /*
    * store - assigns a value to favnum
    * _favNum - argument (value to give favnum)
    */

    function store(uint256 _favNum) public {
        myfavNum = _favNum;
    }

    function retrieve() public view returns(uint256) {
        return myfavNum;

    }
    
}

/* 0xd9145CCE52D386f254917e481eB44e9943F39138 *///address of contract


/* mapping format */


