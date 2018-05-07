//
//  VCCollection.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 17/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit

class VCCollection: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var colMiCollection:UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //métodos BASICOS de la clase VCCollection para mostrar los datos
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int(DataHolder.sharedInstance.numCeldas)  //shardInstance apunta a si mismo en formato objeto apra poder acceder a él
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Devuelve una celda que creamos:
        let cell : CVCMiCelda2 = collectionView.dequeueReusableCell(withReuseIdentifier: "miCelda2", for: indexPath) as! CVCMiCelda2
        
//      accedo al nombre desde el método genérico del DataHolder
//       cell.lblName2?.text=DataHolder.sharedInstance.nombreCelda(num: indexPath.row) as String
        
//        cut this cause mooved it to DataHolder
        if (indexPath.row==0) {
            cell.lblName2?.text="EVA00"
            cell.imgImage2?.image = UIImage(named:"Rei_Ayanami.jpg")
        }
        if (indexPath.row==1) {
            cell.lblName2?.text="EVA01"
            cell.imgImage2?.image = UIImage(named:"EVA-1.jpg")
        }
        if (indexPath.row==2) {
            cell.lblName2?.text="EVA02"
            cell.imgImage2?.image = UIImage(named:"EVA-2.jpg")
        }
        if (indexPath.row==3) {
            cell.lblName2?.text="EVA03"
            cell.imgImage2?.image = UIImage(named:"EVA-3.jpg")
        }
        if (indexPath.row==4) {
            cell.lblName2?.text="NERV"
            cell.imgImage2?.image = UIImage(named:"NERV")
        }
        return cell
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
