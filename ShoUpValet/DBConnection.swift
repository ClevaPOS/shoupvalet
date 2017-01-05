//
//  DBConnection.swift
//  ShoUpValet
//
//  Created by Van Pham on 05/01/2017.
//  Copyright © 2017 VanPham. All rights reserved.
//

import Foundation

class DBConnection {
    
    var host: String?
    var username: String?
    var password: String?
    
    init(dbhost: String, usr: String, pwd: String) {
        
        self.host = dbhost
        self.username = usr
        self.password = pwd
    }
    
    


}

