//
//  DataHolder.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 20/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit
import Firebase


class DataHolder: NSObject {
    
    //sharedInstance es una referencia a DataHolder, var que hace referencia a sí mismo, solo una vez.
    //Habra únicamente UNA referencia sharedInstance en memoria a esta clase
    //Se ejecutará únicamente cuando arraque la app.
    //Cuando quiero utilizarla en otras clases, no tengo que hacer un new (ya está hecho aquí)
    //Variable global que siempre será accesible desde cualquier VC
    static let sharedInstance:DataHolder=DataHolder()
    
    var numCeldas:UInt=5;
    
    //importamos el objeto firestoredatabase, que es una instanciación del Firestore
    //var fireStoreDB:Firestore?
    
    func initFirebase() {
        //(1.,2.,3. -> AppDelegate)
        //4. aquí añadimos Firebase a la aplicación
        // Use Firebase library to configure APIs
        FirebaseApp.configure()
        
        //la clase estática firestore tiene un método que le devuelve la instancia
        //fireStoreDB = Firestore.firestore()
    }
    
    func nombreCelda(num:Int) -> NSString {
        if (num==0) {
        return "EVA00"
        }
        if (num==1) {
        return "EVA01"
        }
        if (num==2) {
        return "EVA02"
        }
        if (num==3) {
        return "EVA03"
        }
        if (num==4) {
        return "NERV"
        }
        
        return ""
    }
    

    
    
}
