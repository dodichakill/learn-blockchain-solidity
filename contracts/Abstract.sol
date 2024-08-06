pragma solidity >=0.8.2 <0.9.0;

abstract contract MyAbstract {
    function getAngka(uint a, uint b) public virtual;

    function hitung() public virtual view returns(uint);
}

contract Hitung is MyAbstract {
    uint panjang;
    uint lebar;

    function getAngka(uint a, uint b) public override {
        panjang = a;
        lebar = b;
    }
    function hitung() public override view returns (uint){
        return panjang * lebar;
    }
}