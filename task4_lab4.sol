// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Notebooks{
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }
    
    Book private book;
    
    // Function to set book details
    function setBook(string memory title, string memory author, uint256 id) public {
        book.title = title;
        book.author = author;
        book.book_id = id;
    }
    
    // Function to get book details
    function getBook() public view returns (string memory, string memory, uint256) {
        return (book.title, book.author, book.book_id);
    }
}



