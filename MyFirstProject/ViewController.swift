//
//  ViewController.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 3/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // la clase ViewController HEREDA (:) de la clase del sistema UIViewController es la clase padre,
                                        //tiene una serie de métodos y los podemos usar desde esta clase
    
    // esta clase se crea automaticamente ¿con al primera vista?
    //todas las clases de tipo visual (UI) tienen dos metodos por defecto: A. viewDidLoad y B. didReceiveMemoryWarning
    
    //1. Creamos la var btn:
    //@IBOutlet(Interface Block) lo conecta con un elem VISUAL, hace que aparezca un círculo vacío, son enchufes, se rellena en cuanto se conecta
    //como hábito nombramos las var empezando con la letra del tipo de var
    
    //Es útil utilizar una var por cada elemento visual
    // @IBOutlet var var_name:tipo_obj
    @IBOutlet var btnLogin:UIButton?    //?: no lo inicializamos (ya se inicializa en cuanto se carga la vista)
                                        //? es para especificar que puede tener cualquier valor (???)
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPass:UITextField?
  
    var sMiNombre:String = "Oli"
    
    //A. el código que se ejecuta aquí, se ejecuta después a la carga visual
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //B.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }
    
    //para conectar a una ACCIÓN de un elem visual utilizamos
    @IBAction func checkLoginButton() {
        //si quiero coger el dato del textfield:
        print("User: "+(txtUser?.text)!+" Pass: "+(txtPass?.text)!)     // ! makes sure it wont print it if its value is null
        
        
        if txtUser?.text=="Oli" && txtPass?.text=="pass" {
            // para ejecutar una transición de un VC a otro, utilizamos un método de la clase UIViewControler, para llamarlo utilizamos self (para referirme a mi própia clase (ViewController)
            //yo mismo estoy llamando a este método, soy el remitente, el destino
            self.performSegue(withIdentifier: "tranLogin", sender: self)
            print("Usuario: "+(txtUser?.text)!+" ESTÁ registrado")
        } else {
            print("Usuario: "+(txtUser?.text)!+" no está registrado")
        }
    }

    //esto no lo estamos usando
    @IBAction func buttonClick() {
        print("que pacha chuli"+(txtUser?.text)!)
        if txtUser?.text == sMiNombre {
            //1. para poder ejecutar algo necesitamos referenciarlo, le damos un identificador a la transición (clicamos en la trans inconcd > 4ª opc > ID)
            //PARA EJECUTAR LA TRANSICIÓN USAMOS:
            //self
            //el primer parámetro es el ID, y el segundo el sender (el remitente)
            self.performSegue(withIdentifier: "trlogin", sender: self) //self: YO SOY EL REMITENTE
        }
    }

    //cuando quiero definir una transicion condicional entre dos vistas, una relación de transicioon entre dos vistas
    //cojemos la vista A (amarillo entera) y con el 'triggered S'  le marcamos como origen la vista B
    
    
}

