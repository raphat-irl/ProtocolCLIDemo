//
//  main.swift
//  ProtocolCMDDemo
//
//  Created by Raphat Aektantidamrong on 18/1/2567 BE.
//

import Foundation

protocol User {
    var name:String { set get }
    var lastName:String { set get }
    var fullName:String { get }
    var email:String { get }
}

    struct RegisterUser : User {
        
        var name: String
        
        var lastName: String
        
        var email: String
        
        var fullName: String {
            return "\(name) \(lastName)"
        }
    }

    var regsiter = RegisterUser(name: "John", lastName: "Abaken", email: "John@email.com")
    print(regsiter.fullName)

    class GuestUser : User {
        
        var name: String = ""
        
        var lastName: String = ""
        
        var email: String = ""
        
        var fullName: String {
            return "\(name) \(lastName)"
        }
    }

    var guest = GuestUser()
    guest.name = "Lucy"
    guest.lastName = "Yamamoto"
    guest.email = "lucy@gmail.com"
    print(guest.fullName)

