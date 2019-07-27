//
//  ListaDeSolicitacoesTableViewCell.swift
//  iAssist
//
//  Created by Carlos Henrique Souza da Cunha on 27/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ListaDeSolicitacoesTableViewCell: UITableViewCell {

    @IBOutlet weak var imagemImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
