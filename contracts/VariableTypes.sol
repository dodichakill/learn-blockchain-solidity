pragma solidity >=0.8.2 <0.9.0;

contract VariableTypes {
    //state variable
    uint sum;

    //local variable
    function tambah(uint num1, uint num2) public {
        // local
        uint temp = num1 + num2;
        sum = temp;
    }

    function getHasil() public view returns(uint) {
        return sum;
    }
    
}

contract Types {
    bool public valid = true;
    int32 public num1 = -32;
    uint public num2 = 1;

    uint32 public ui_data = 5_02_2024;

    uint8 result;

    function tambah() public {
        // result = 3/5; //akan error karena tidak mendukung bilangan pecahan sebagai hasil
        result = 3.5 + 1.5; // tidak error karena bilangan pecahanya dijumlakan menjadi bilangan integer
    }

    // bytes 1-32
    bytes1 uruf = "A"; //lebih sedikit gass yang dipakai
    string kalimat = "Hello World"; //lebih banyak gass yang dipakai
   
}

contract EnumSaya {
    enum Jobs {Programmer, Analis, Security}

    function getEnum() public pure returns(Jobs) {
        return Jobs.Analis;
    }
}




