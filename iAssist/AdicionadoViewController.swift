//
//  AdicionadoViewController.swift
//  iAssist
//
//  Created by student on 09/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class AdicionadoViewController: UIViewController {

    var tituloDoPedido : String?
    var historiaDoPedido : String?
    
    @IBOutlet weak var tituloDoPedidoLabel: UILabel!
    
    @IBOutlet weak var historiaDoPedidoLabel: UILabel!
    
    
    //lazy var newRequest = Assistencia(titulo: self.tituloDoPedido, descricao: "", historia: historiaDoPedido)
    override func viewDidLoad() {
        super.viewDidLoad()

        historiaDoPedidoLabel.text = historiaDoPedido
        tituloDoPedidoLabel.text = tituloDoPedido
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
