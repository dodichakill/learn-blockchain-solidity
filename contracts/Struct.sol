pragma solidity >=0.8.2 <0.9.0;

// struct mirip sebuah class di javascript 
contract Structure {
    struct Book {
        string title;
        string author;
        uint id;
        bool isReady;
    }

    // cara instance struct ke-1
    Book buku1;

    function addBook() public {
        buku1 = Book("Sakti Hacker", "heker", 69, true);
    }
    function showBook() public view returns (string memory, string memory, uint, bool){
        return (buku1.title, buku1.author, buku1.id, buku1.isReady);
    }

    // cara instance struct ke-2
    Book buku2 = Book("Blockhain Dev", "dodi", 10, true);

    function showBook2() public view returns (string memory, string memory){
        return (buku2.title, buku2.author);
    }

    // cara instance struct array
    Book[] public buku3;

    function newBook(string memory title, string memory author, uint id, bool isReady) public {
        buku3.push(Book(title, author, id, isReady));
    }
    function infoBook(uint _index) public view returns (string memory title, string memory author, uint id, bool isReady) {
        Book storage book = buku3[_index];
        return (book.title, book.author, book.id, book.isReady);
    }
}