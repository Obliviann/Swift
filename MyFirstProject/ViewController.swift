//
//  ViewController.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 3/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // esta clase se crea automaticamente ¿con al primera vista?
    //todas las clases de tipo visual (UI) tienen dos metodos por defecto: 1. viewDidLoad y 2. didReceiveMemoryWarning
    
    //1. Creamos la var btn
    //@IBOutlet: lo conecta con un elem visual + var_name:tipo_obj
    
    @IBOutlet var btnLogin:UIButton?    //?: no lo inicializamos (ya está inicializado en cuanto se carga la vista del Main.storyboard)
    //Para empezar, es útil utilizar una var por cada elemento visual
    //las @IBOutlet (Interface Block) hace que aparezca un círculo vacío, son enchufes, conecta con cualquier elem VISUAL
    //las ? es para especificar que puede tener cualquier valor (???)
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPass:UITextField?
    
    //como hábito nombramos las var empezando con la letra del tipo de var
    var sMiNombre:String = "Oli"
    
    //1. el código que se ejecuta aquí, se ejecuta después a la carga visual
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //2.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

    //necesita un enchufe, para vincular ACCIONES utilizamos @IBAction
    @IBAction func buttonClick() {
        //si además quiero coger el dato del textfield
        print("que pacha chuli"+(txtUser?.text)!)
        if txtUser?.text == sMiNombre {
            //(para poder ejecutar algo necesitamos referenciarlo, le damos un identificador, clicamos en la trans inconcd y luego en ID)
            //PARA EJECUTAR LA TRANSICIÓN USAMOS:
            //el primer parámetro es el ID, y el segundo el sender (el remitente)
            self.performSegue(withIdentifier: "trlogin", sender: self) //self: YO SOY EL REMITENTE
        }
    }

    //cuando quiero definir una transicion condicional entre dos vistas, una relación de transicioon entre dos vistas
    //cojemos la vista A (amarillo entera) y con el 'triggered S'  le marcamos como origen la vista B
    
    
    
}

