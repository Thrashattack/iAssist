//
//  DetalheAssistenciaViewController.swift
//  iAssist
//
//  Created by student on 29/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class DetalheAssistenciaViewController: UIViewController {

    @IBOutlet weak var imagemImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var historiaTextView: UITextView!
    @IBOutlet weak var contadoraDeLikesLabel: UILabel!
    
    var imagem = "", titulo = "", historia = ""
    var contadora = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemImageView.image = UIImage(named: imagem)
        tituloLabel.text = titulo
        historiaTextView.text = historia
        contadoraDeLikesLabel.text = contadora
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dadoPassandoViaSegue"{
            if let dadoPassado = segue.destination as? LoginViewController{
                dadoPassado.tituloLogin = titulo
                dadoPassado.historiaLogin = historia
                dadoPassado.imagemLogin = imagem
            
            }
        
        }
        
        
    }
    

}
