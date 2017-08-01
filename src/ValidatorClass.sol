pragma solidity ^0.4.14;

contract ValidatorClass {
    address[] public validators;
    address[] public disabledValidators;
    
    struct Validator {
        string fullName;
        string streetName;
        string state;
        uint zip;
        uint licenseID;
        uint licenseExpiredAt;
        uint disablingDate;
        string disablingTX;
    }
    
    mapping(address => Validator) public validator;

    /// Issue this log event to signal a desired change in validator set.
    /// This will not lead to a change in active validator set until 
    /// finalizeChange is called.
    ///
    /// Only the last log event of any block can take effect.
    /// If a signal is issued while another is being finalized it may never
    /// take effect.
    /// 
    /// _parent_hash here should be the parent block hash, or the
    /// signal will not be recognized.
    event InitiateChange(bytes32 indexed _parent_hash, address[] _new_set);
}