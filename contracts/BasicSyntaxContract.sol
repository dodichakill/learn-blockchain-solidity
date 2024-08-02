pragma solidity ^0.8.0;

contract BasicSyntaxContract {
    uint storedData;

    //melakukan set data
    function set(uint x) public {
        storedData = x;
    }

    //menampilkan data
    function get() public view returns (uint) {
        return storedData;
    }
}