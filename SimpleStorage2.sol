// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18; // this is the version of the solidity "caret means that it the the current version stated and above ( that is 0.8.18 and above)

contract SimpleStorage {

    bool hasFavouriteNumber = true;
    uint256 favouriteNumber = 88;
    string favouriteNumberInText = "eighty-eight";
    int256 favouriteInt = 88;
    address myAddress = 0x5ccB1DEA057e7c36De6b56Aa402AeA49236aAB9F;
    bytes32 favouriteBytes32 = "fowl";
}


// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18; // this is the version of the solidity "caret means that it the the current version stated and above ( that is 0.8.18 and above)

contract SimpleStorage {
    uint256 favouriteNumber; // favourite num is 0 if no value is given

    //creating a function
    function store(uint256 _favouritNumber) public {
        favouriteNumber = _favouritNumber;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18; // this is the version of the solidity "caret means that it the the current version stated and above ( that is 0.8.18 and above)

contract SimpleStorage {
    uint256 public favouriteNumber; // favourite num is 0 if no value is given

    //creating a function
    function store(uint256 _favouritNumber) public {
        favouriteNumber = _favouritNumber;
    }
}


// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18; // this is the version of the solidity "caret means that it the the current version stated and above ( that is 0.8.18 and above)

contract SimpleStorage {
    // adding public is to be able to see the favouritNumber value
    uint256 public myfavouriteNumber; // favourite num is 0 if no value is given

    // uint256[] listOfFavouriteNumber;
    
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listofPeople;

    //static array because it can only take only 3 input
    // Person[3] public listofPeople;

    // Person public john = Person({favouriteNumber: 7, name:"John"});
    // Person public wick = Person({favouriteNumber: 26, name:"Wick"});

    //creating a function
    function store(uint256 _favouritNumber) public {
        myfavouriteNumber = _favouritNumber;
    }

    function retrieve() public view returns(uint256) {
        return myfavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listofPeople.push( Person(_favouriteNumber, _name) );
    }
}



// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18; // this is the version of the solidity "caret means that it the the current version stated and above ( that is 0.8.18 and above)

contract SimpleStorage {
    // adding public is to be able to see the favouritNumber value
    uint256 public myfavouriteNumber; // favourite num is 0 if no value is given

    // uint256[] listOfFavouriteNumber;
    
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listofPeople;

    //static array because it can only take only 3 input
    // Person[3] public listofPeople;

    // Person public john = Person({favouriteNumber: 7, name:"John"});
    // Person public wick = Person({favouriteNumber: 26, name:"Wick"});

    //creating a function
    function store(uint256 _favouritNumber) public {
        myfavouriteNumber = _favouritNumber;
    }

    function retrieve() public view returns(uint256) {
        return myfavouriteNumber;
    }

    // add function
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listofPeople.push( Person(_favouriteNumber, _name) );
    }
}


// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18; // this is the version of the solidity "caret means that it the the current version stated and above ( that is 0.8.18 and above)

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContract;

    function creatSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}