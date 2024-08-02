pragma solidity >=0.8.2 <0.9.0;

contract HelloWorld {
    uint hasil;
    
    // pure digunakan untuk mereturn lebih dari 1, tanpa memodifikasi variable state
    function cetakHello() public pure returns(string memory) {
        return 'Hello World';
    }

    function tambah(uint a, uint b) public  {
        //lokal
        uint temp = a + b;
        hasil = temp;
    }

    function getHasil() public view returns(uint) {
        return hasil;
    }
    
}


contract PayableContract {
    uint receivedAmount;

    function receivedEther() payable public {
        receivedAmount = msg.value;
    }

    function getTotalAmount() public view returns(uint) {
        return receivedAmount;
    }

    // Overload, tidak boleh mengandung return
    function tambah(uint a, uint b) public pure returns(uint hasil) {
        hasil = a + b;
    } 
    function tambah(uint a, uint b, uint c) public pure returns(uint hasil) {
        hasil = a + b + c;
    }
}