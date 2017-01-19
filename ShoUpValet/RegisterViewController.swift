//
//  RegisterViewController.swift
//  ShoUpValet
//
//  Created by VanPham on 19/01/2017.
//  Copyright © 2017 VanPham. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var txtPass: UITextField!
    @IBAction func btnRegister(_ sender: Any) {
        var acc_pass = txtPass.text!
        
        let api = DBConnection()
        api.insertUser(host: "http://local.ubm/index.php", name: fullname, username: acc_user, password: acc_pass, email: acc_email, status: "0", phone: acc_phone)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
