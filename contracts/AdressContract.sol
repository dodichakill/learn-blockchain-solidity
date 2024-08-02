pragma solidity >=0.7.0 <0.9.0;

// address digunakan untuk menerima ether dll (sebagai nomor rekening)
// smart contract punya address
// address terdiri dari 2 tipe yaitu address biasa (send & Transfer), sama address payable
contract AddressContract {
    // cara mengetahui address pemanggil (account)
    // cara 1
    // address public caller;
    
    // function getCallerAdress() public returns(address) {
    //     caller = msg.sender;

    //     return caller;
    // }

    // cara 2 
    function getCallerAdress() public view returns(address caller) {
        caller = msg.sender;
    }

    uint receivedAmount;

    // cara mengetahui address target (dari smartcontract-nya)
    function  getTargetAdress() public  view returns(address) {
        address target = address(this);
        return target; 
    }

    function receiveEther() payable public {
        receivedAmount = msg.value;
    }

    // address payable
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    function sendFund(address payable _address, uint nominal) public returns(bool){
        _address.send(nominal);
    }


}