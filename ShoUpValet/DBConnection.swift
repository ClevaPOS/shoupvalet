//
//  DBConnection.swift
//  ShoUpValet
//
//  Created by Van Pham on 05/01/2017.
//  Copyright © 2017 VanPham. All rights reserved.
//
import Foundation


class DBConnection {
    
    
    init() {
    }
    
    func authenticateUser(username: String, pwd: String, host: String) {
        let parameters = ["name": username, "password": pwd] as Dictionary<String, String>
        let url = URL(string: host)! //change the url
        let session = URLSession.shared
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
                
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
        
    }
    
    func insertUser(host: String, name: String, username: String, password: String, email: String, status: String, phone: String) {
        
        let myUrl = URL(string: host);

        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "name=" + name + "&username=" + username + "&password=" + password + "&email=" + email + "&phone=" + phone + "&status=" + status;
        
        print(postString)
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        
        let session = URLSession.shared

        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
                
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
    

    
    


}

