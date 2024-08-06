pragma solidity >=0.8.2 <0.9.0;

contract Payable {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}
    
    function getAmount() public view returns (uint){
        uint amount = address(this).balance;
        return amount;
    }

    function withdrawl() public {
        uint amount = address(this).balance;
        (bool success,) = owner.call{value: amount}("");
        require(success, "Berhasil Withdrawl");
    }

    function transfer(address payable _to, uint _amount) public {
        (bool success,) = _to.call{ value: _amount }("");
        require(success, "Berhasil kirim ether ke owner");
    }
}