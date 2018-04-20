//
//  DataHolder.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 20/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit

class DataHolder: NSObject {
    
    //sharedInstance es una referencia a DataHolder, var que hace referencia a sí mismo, solo una vez.
    //Habra únicamente UNA referencia sharedInstance en memoria a esta clase
    //Se ejecutará únicamente cuando arraque la app.
    //Cuando quiero utilizarla en otras clases, no tengo que hacer un new (ya está hecho aquí)
    //Variable global que siempre será accesible desde cualquier VC
    static let sharedInstance:DataHolder=DataHolder()
    
    var numCeldas:UInt=5;
    
    func nombreCelda(num:Int) -> NSString {
        if (num==0) {
        return "EVA00"
        //cell.imgImage2?.image = UIImage(named:"Rei_Ayanami.jpg")
        }
        if (num==1) {
        return "EVA01"
        //cell.imgImage2?.image = UIImage(named:"EVA-1.jpg")
        }
        if (num==2) {
        return "EVA02"
        //cell.imgImage2?.image = UIImage(named:"EVA-2.jpg")
        }
        if (num==3) {
        return "EVA03"
        //cell.imgImage2?.image = UIImage(named:"EVA-3.jpg")
        }
        if (num==4) {
        return "NERV"
        //cell.imgImage2?.image = UIImage(named:"NERV")
        }
        
        return ""
    }
    
}
