pragma solidity >=0.8.2 <0.9.0;

contract A {
    function getAValue() external pure returns (string memory){
        return "Contract A dipanggil";
    }
}

contract B is A {
    function getBValue() external pure returns (string memory){
        return "Contract B dipanggil";
    }
}

contract C is B {
    function getCValue() external pure returns (string memory){
        return "Contract B dipanggil";
    }
}

contract Caller {
    C contractC = new C();

    function warisan() public view returns (string memory, string memory, string memory){
        return (contractC.getAValue(), contractC.getBValue(), contractC.getCValue());
    }
}