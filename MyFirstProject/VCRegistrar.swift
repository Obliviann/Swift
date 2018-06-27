//
//  VCRegistrar.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 3/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit
import FirebaseAuth

class VCRegistrar: UIViewController {
    
    @IBOutlet var txtNewUser:UITextField?
    @IBOutlet var txtEmail:UITextField?
    @IBOutlet var txtNewPass:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton() {
        //Create new users
        //FIRAuth : clase estática
        //auth() : objeto dentro de dicha clase estática
        //createUser() : método del objeto auth()
        //dos parámetros de entrada + dos outputs (objeto user con toda la info y error)
        Auth.auth().createUser(withEmail: (txtEmail?.text)!, password: (txtNewPass?.text)!) { (user, error) in
            if (error==nil){ //si no hay error
                self.performSegue(withIdentifier: "transReg", sender: self)
            } else {
                print("ERROR EN REGISTRO: ", error)
            }
        }
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
