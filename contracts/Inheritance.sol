pragma solidity >=0.8.2 <0.9.0;

contract Parent {
    uint internal id;

    function setValue(uint _value) external {
        id = _value;
    }
}

contract Child is Parent {
    function getValue() external view returns (uint){
        return id;
    }
}

contract caller {
    Child x = new Child();

    function wariskan(uint _input) public returns (uint) {
        x.setValue(_input);
        return x.getValue();
    } 
}