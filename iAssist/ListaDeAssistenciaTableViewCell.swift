//
//  ListaDeAssistenciaTableViewCell.swift
//  iAssist
//
//  Created by student on 25/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ListaDeAssistenciaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagemImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
