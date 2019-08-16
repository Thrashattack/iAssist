//
//  ArquivoViewController.swift
//  iProvide
//
//  Created by student on 15/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ArquivoViewController: UIViewController {
    
    var tituloDaAjuda : String?
    var descricaoDaAjuda : String?
    var historiaDaAjuda : String?
    

    //To be implemented
    //@IBOutlet weak var picImage: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var historiaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tituloLabel.text = tituloDaAjuda
        descricaoLabel.text = descricaoDaAjuda
        historiaLabel.text = historiaDaAjuda
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
