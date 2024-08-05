pragma solidity >=0.8.2 <0.9.0;

contract A {
    uint internal a;

    function getA(uint _value) external {
        a = _value;
    }
}

contract B is A {
    uint internal b;

    function getB(uint _value) external {
        b = _value;
    }
}

contract C is A,B {
    function getValueOfSum() external view returns (uint){
        return a + b;
    }
}

contract Caller {
    C contractC = new C();

    function warisan() public returns (uint){
        contractC.getA(10);
        contractC.getB(30);
        return contractC.getValueOfSum();
    }
}