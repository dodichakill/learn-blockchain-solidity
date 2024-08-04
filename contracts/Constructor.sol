pragma solidity >=0.8.2 <0.9.0;

contract tokenKu {
    int totalsupply;

    address private owner = 0xdD870fA1b7C4700F2BD7f44238821C26f7392148;

    constructor(int _totalSupply) public  {
        // akan menambahkan supply jika yang melakukanya adalah ownernya sendiri
        if(msg.sender == owner){
            totalsupply = _totalSupply;
        }
    }

    function getTotalSupply() public view returns (int) {
        return totalsupply;
    }
}