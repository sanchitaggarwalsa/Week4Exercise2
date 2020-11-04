//
//  Server.swift
//  Week4Exercise2
//
//  Created by Sanchit Aggarwal on 2020-11-03.
//


import Foundation

class Server {
   private(set) var registeredUsers = [String: String]()
   private(set) var loggedInUser: String?
    let  requiredPasswordLength: Int = 8
    
    func createNewUser(username: String?, password: String?) -> Result<String, Error> // this is tuple means we can create multiple type without having container type.
    {
        guard let username = username, let password = password else {
            return .failure("Missing username or password value.")
        }
        
        guard registeredUsers[username] == nil else {
            return .failure("User already registered")
        }
        
        guard password.count >= requiredPasswordLength else {
            return .failure("Password length is too short")
        }
        
        // if user meet all the requirements
        
        registeredUsers[username] = password
        return .success(username)
        
    }
    
    func logIn(username: String?, password:String?) -> Result<String, Error> { // this is tuple
        
        //verify username and password
        guard let username = username, let password = password else {
            return .failure("Missing Username or Password field")
        }
        
        //check that the user is registered
        guard registeredUsers[username] != nil else {
            return .failure("Invalid username or Do not have account")
        }
        
        // check that the password is correct
        guard let existingPassword = registeredUsers[username],
              existingPassword == password else {
            return .failure("Password is incorrect")
        }
        loggedInUser = username
        return .success(username)
    }
}
 
// Any string can be used as an error
extension String: Error { }

