//
//  ViewController.swift
//  CapiraSnapchat
//
//  Created by Sandro Rodrigo on 14/10/24.
//

import UIKit
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){(user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguiente error:\(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

