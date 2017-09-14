pragma solidity ^0.4.11;

contract ValidatorClass {
    address[] public validators;
    address[] public disabledValidators;
    
    struct Validator {
        bytes32 fullName;
        bytes32 streetName;
        bytes32 state;
        uint zip;
        bytes32 licenseID;
        uint licenseExpiredAt;
        uint disablingDate;
        bytes32 disablingTX;
    }
    
    mapping(address => Validator) public validator;
}