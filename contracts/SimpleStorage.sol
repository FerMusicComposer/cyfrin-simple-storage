// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    uint256 myFavoriteNumber;
    Person[] public listOfPeople;
    mapping (string => uint256) public namesToFavoriteNumber;

    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    function store(uint256 _favoriteNumber) virtual public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_name, _favoriteNumber));
        namesToFavoriteNumber[_name] = _favoriteNumber;
    }
}