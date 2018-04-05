//
//  VCTable.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 4/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit

//1. añadimos los delegates (plantillas) con los métodos necesarios para que nuestra tabla funcione
class VCTable: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tbMiTable:UITableView?

    //este método Load, cuando se carga la clase, llama a la BBDD, que le devuelve un array con datos (en vez de usar valores estáticos)
    override func viewDidLoad() {
        super.viewDidLoad()
        //conectamos los delegates y sus métodos a la tabla visual a través de código mejor que de forma visual:
        tbMiTable?.delegate = self
        tbMiTable?.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //2. implementamos los dos métodos que me pide el protocolo de los delegates:
    
    //A.devuelve la cantidad de celdas que quiero que se creen
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //B.devuelve la celda concreta para la posición concreta
    //se va a ejecutar una vez por cada celda especificada en el método anterior
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //creo un constante (let) de tipo cell, que representa la celda prototipo
        let cell : TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "miCelda1") as! TVCMiCelda
                                                                            //casteamos. Fprzar que la cell que creamos, la defina como TVCMiCelda y así poder modificarla a mi gusto.
        if (indexPath.row==0) {
            cell.lblName?.text="EVA00"
            cell.imgImage?.image = UIImage(named:"Rei_Ayanami.jpg")
        }
        if (indexPath.row==1) {
            cell.lblName?.text="EVA01"
            cell.imgImage?.image = UIImage(named:"EVA-1.jpg")
        }
        if (indexPath.row==2) {
            cell.lblName?.text="EVA02"
            cell.imgImage?.image = UIImage(named:"EVA-2.jpg")
        }
        if (indexPath.row==3) {
            cell.lblName?.text="EVA03"
            cell.imgImage?.image = UIImage(named:"EVA-3.jpg")
        }
        if (indexPath.row==4) {
            cell.lblName?.text="NERV"
            cell.imgImage?.image = UIImage(named:"NERV")
        }
        
        return cell
    }
    
    //más métodos:
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" %d he seleccionado la celda: ", indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(" %d he DEseleccionado la celda: ", indexPath.row)
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
