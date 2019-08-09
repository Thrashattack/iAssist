//
//  AdicionarViewController.swift
//  iAssist
//
//  Created by student on 09/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class AdicionarViewController: UIViewController {

    @IBOutlet weak var tituloDoPedidoText: UITextField!
    
    @IBOutlet weak var historiaDoPedidoText: UITextField!
    
    //Falta descobrir como envia uma image pro outro lado
    @IBOutlet weak var pedidoImage: UIImageView!
    
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
        
        if segue.identifier == "Adicionar"{
            if let addProxTela = segue.destination as? AdicionadoViewController{
                addProxTela.tituloDoPedido = tituloDoPedidoText.text
                
                addProxTela.historiaDoPedido = historiaDoPedidoText.text
            }
        }
    }
    

}
