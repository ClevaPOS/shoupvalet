//
//  DetailsViewController.swift
//  ShoUpValet
//
//  Created by VanPham on 19/01/2017.
//  Copyright © 2017 VanPham. All rights reserved.
//

import UIKit

var fullname = ""
var acc_user = ""
var acc_email = ""
var acc_phone = ""

class DetailsViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBAction func btnData(_ sender: UIButton) {
        fullname = txtName.text!
        acc_user = txtUsername.text!
        acc_email = txtEmail.text!
        acc_phone = txtPhone.text!
        
        performSegue(withIdentifier: "passcodesegue", sender: nil)

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
