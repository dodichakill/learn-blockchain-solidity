pragma solidity >=0.8.2 <0.9.0;

contract ParentContract {
    uint private data;
    uint public info;
    constructor(){
        info = 10;
    }

    function increment(uint a) private pure returns (uint) {
        return a + 1;
    }
    function setIncrement() public pure returns (uint) {
        return increment(2);
    }
    function updateData(uint a) public {
        data = a;
    } 
    function getData() public view returns (uint) {
        return data;
    }
    function compute(uint a, uint b) internal pure returns (uint){
        return a + b;
    }
}


// External Contract
contract MyExternalContract {
    function readData() public returns (uint) {
        ParentContract c = new ParentContract();
        c.updateData(7);
        return c.getData();
    }
} 

// inheritance
contract Baru is ParentContract {
    uint private result;
    ParentContract private c;

    constructor(){
        c = new ParentContract();
    }

    function getComputeResult() public {
        result = compute(4, 5);
    }

    function getResult() public view returns (uint){
        return result;
    }

    function getDataBaru() public view returns (uint){
        return c.info();
    }
}