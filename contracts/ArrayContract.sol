pragma solidity >=0.8.2 <0.9.0;

contract ArrayContract {
    // Array, (fixed)

    // memory
    // function getData() public pure returns (uint) {
    //     uint[5] memory data = [uint(50),60,70,80,100]; //untuk awal perlu dikonvert menjadi uint, setelahnya akan otomatis mengikuti
    //     return data[1];
    // }

    // storage
    uint[5] data;
    function getData() public returns (uint) {
        data = [uint(50),60,70,80,100]; //untuk awal perlu dikonvert menjadi uint, setelahnya akan otomatis mengikuti
        return data[1];
    }
}

contract DynamicArray {
    // uint[] data;

    // function getDataBaru() public returns(uint[] memory){
    //     data = [60, 70, 30, 40]; //inline
    //     return data;
    // }

    uint[] databaru;

    function getBaru() public returns (uint[] memory){
        databaru = new uint[](3);
        databaru[0] = 10;
        databaru[1] = 20;
        databaru[2] = 30;

        return databaru;
    }
}


// method dari Array :
// length = menghitung jumlah isi array
contract ArrayLength {
    uint[7] data;

    function array_example() public payable returns (uint[7] memory){
        data = [uint(10), 20, 30, 40, 50, 60, 70];
        return data;
    }

    function array_length() public view returns (uint){
        uint x = data.length;
        return x;
    }
}

// push = menambahkan isi data baru ke array
contract PushArray {
    uint[] arr;

    function insert() public returns (uint[] memory){
        arr = [1,2,3];
        
        // push Array
        arr.push(4);
        arr.push(9);

        return arr;
    }
}

// menghapus isi array yang terakhir
contract PopArray {
    uint[] arr;

    function hapusSatu() public returns (uint[] memory){
        arr = [1,2,3,5];
        
        arr.pop();
        return arr;
    }
}