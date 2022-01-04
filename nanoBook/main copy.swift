//
//  main.swift
//  Books
//
//  Created by sumayah on 23/05/1443 AH.
//#####################################################################
//#####################################################################

import Foundation


struct Author {
    var AuthorBook :[String:Any]
}

//objects
var Author1 = Author(AuthorBook:["a1":["b1","b2","b3"]])
var Author2 = Author(AuthorBook:["a2":["b1","b2"]])
var Author3 = Author(AuthorBook:["a2":["b1","b2","b5","6"]])


var allBooks : [Author]  = [Author1 , Author2 ,Author3]

func printBooks(){
    for book in allBooks {
        print (book.AuthorBook.values)
    }
    
}

var services = """
1-show all books
2-author's name
"""

var servcise: String=""

print("Hello, World!")
print("select one of these servcise")
print("Type the number of servcise")
print("""
1.Press number 1 to show all books
2.Press number 2 to enter the author's name
3.Exit
""")

repeat{
if let userinput = readLine(){
    servcise = userinput
    switch userinput{
    case "1":
        printBooks()
       
    case "2":
        print("Type The Author Name")
        var authorName = readLine()!
        for book in allBooks {
            if(book.AuthorBook.keys.contains(authorName)){
                print (book.AuthorBook.values)
                
            }
            print (book.AuthorBook.keys)
        }
    case "3":print("Exit")
    default:print("choose one of service")
    }
    
}
}while servcise != "3"

