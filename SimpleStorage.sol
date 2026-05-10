// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
uint256 myFavoriteNumber;

struct Person {
uint256 myFavoriteNumber;
string name;
}

Person[] public listOfPerson;

mapping(string => uint256) public nameToFavoriteNumber;

function store(uint256 _favoriteNumber) public {
myFavoriteNumber = _favoriteNumber;
}

function retrieve() public view returns(uint256) {
return myFavoriteNumber;
}

function addPeople(string memory _name, uint256 _favoriteNumber) public {
listOfPeople.push(Person(_favoriteNumber, _name));
nameToFavoriteNumber[_name] = _favoriteNumber;
}

}
