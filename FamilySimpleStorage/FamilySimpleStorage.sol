// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FamilySimpleStorage {

    // Struct to hold both favorite number and word
    struct FamilyInfo {
        uint256 favoriteNumber;
        string favoriteWord;
    }

    // Mapping name → FamilyInfo
    mapping(string => FamilyInfo) public familyDetails;

    // Store both a favorite number and word for a given name
    function setFamilyDetails(
        string memory _name,
        uint256 _favoriteNumber,
        string memory _favoriteWord
    ) public {
        familyDetails[_name] = FamilyInfo(_favoriteNumber, _favoriteWord);
    }

    // Retrieve favorite number for a given name
    function getFavoriteNumber(string memory _name) public view returns (uint256) {
        return familyDetails[_name].favoriteNumber;
    }

    // Retrieve favorite word for a given name
    function getFavoriteWord(string memory _name) public view returns (string memory) {
        return familyDetails[_name].favoriteWord;
    }
}


