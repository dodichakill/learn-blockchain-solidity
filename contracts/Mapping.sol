pragma solidity >=0.8.2 <0.9.0;

// mapping ini mirip object di js, yang terdiri dari key dan value. (misal key: address, value: uint) 
contract MappingContract {
    mapping(address => uint) public myMap;

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
    function get(address _addr) public view returns (uint){
       return myMap[_addr];
    }
}

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;

    function set(address _addr1, uint _i, bool _bl) public {
        nested[_addr1][_i] = _bl;
    }
    function get(address _addr1, uint _i) public view returns(bool){
        return nested[_addr1][_i];
    }
}