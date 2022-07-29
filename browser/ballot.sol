///
///
///
pragma solidity ^0.8.0;

contract demo_contract {

    // @dev string type
    string definedString = "bob";
    bool myBool = false;
    uint myUnsigned = 12;
    address myAddress = 0x72baf8d7d7d7d;
    string myStringArr;
    bytes32 code;

    enum user_e {
        BUYER, SELLER
    }

    // Mappings
    mapping(address => uint) public balances;

    // Custom types
    struct user_t {
        string first_name;
        string last_name;
        uint user_e;
    }

    // @dev Declare a state variable
    uint storedData;

    // @dev Set a modifier or conditional
    modifier onlyData() {
        require(storedData >= 0);
        _;
    }

    // @dev This function will call the modifier above
    function set(uint x) public {
        storedData = x;
    }

    // @dev Create an event
    event Sent(address from, address to, uint storedData);
}
