//
//  MainViewController.swift
//  ShoUpValet
//
//  Created by Arled Kola on 16/01/2017.
//  Copyright © 2017 VanPham. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var loginLogoutButtonLabel: UIBarButtonItem!
    var userStatus : String = "logged out"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if userStatus == "logged out" {
            loginLogoutButtonLabel.title = "Login"
        } else {
            loginLogoutButtonLabel.title = "Logout"
        }
        

        // Do any additional setup after loading the view.
    }

    @IBAction func loginLogoutButton(_ sender: Any) {
        if loginLogoutButtonLabel.title ?? "" == "Login" {
            performSegue(withIdentifier: "login", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
