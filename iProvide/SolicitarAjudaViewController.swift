//
//  SolicitarAjudaViewController.swift
//  iProvide
//
//  Created by student on 15/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SolicitarAjudaViewController: UIViewController {
    
    //@IBOutlet weak var tituloText: UITextField!
    //@IBOutlet weak var descricaoText: UITextField!
    //@IBOutlet weak var historiaText: UITextField!
    
    @IBOutlet weak var tituloText: UITextField!
    @IBOutlet weak var descricaoText: UITextField!
    @IBOutlet weak var historiaText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toArquivo" {
            if let destinationView = segue.destination as? ArquivoViewController {
                //destinationView.imagem = assistencia.getImagem(index: 0)
                destinationView.tituloDaAjuda = tituloText.text
                destinationView.descricaoDaAjuda = descricaoText.text
                destinationView.historiaDaAjuda = historiaText.text
            }
        }
    }
    
    
}
