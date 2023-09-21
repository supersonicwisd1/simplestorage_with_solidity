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