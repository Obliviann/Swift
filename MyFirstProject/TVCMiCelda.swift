//
//  TVCMiCelda.swift
//  MyFirstProject
//
//  Created by OLIVIA SARTORIUS FRESCHET on 5/4/18.
//  Copyright © 2018 OLIVIA SARTORIUS FRESCHET. All rights reserved.
//

import UIKit

class TVCMiCelda: UITableViewCell {
    
    //queremos que el label vidsual esté conectado a esta var
    @IBOutlet var lblName:UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
