//
//  ListaDeAssistenciaTableViewController.swift
//  iAssist
//
//  Created by student on 25/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ListaDeAssistenciaTableViewController: UITableViewController {
    
    @IBAction func upVoteClick(_ sender: UIButton, forEvent event: UIEvent) {
        self.calcUpVote(assistencia: assistencias[(tableView.indexPathForSelectedRow?.row)!])
    }
    var assistencias = [Assistencia]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        assistencias = AssistenciaMock.mockAssistencias()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return assistencias.count
    }
    
    func calcUpVote(assistencia: Assistencia) {
        assistencia.setUpVote()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listaDeAssistenciaCell", for: indexPath)
        
        let assistencia = assistencias[indexPath.row]
        
        if let destinationCell = cell as? ListaDeAssistenciaTableViewCell {
            destinationCell.tituloLabel.text = assistencia.getTitulo()
            destinationCell.imagemImageView.image = UIImage(named: assistencia.getImagem(index: 0))
            destinationCell.upvotes = assistencia.getUpVote()
    
            
        }
        
        

        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let assistencia = assistencias[(tableView.indexPathForSelectedRow?.row)!]
        
        if segue.identifier == "showAssistenciaDetailSegue" {
            if let destinationView = segue.destination as? DetalheAssistenciaViewController {
                destinationView.imagem = assistencia.getImagem(index: 0)
                destinationView.titulo = assistencia.getTitulo()
                destinationView.historia = assistencia.getHistoria()
                destinationView.contadora = String(assistencia.getUpVote())
            }
        }
        
        
        
    }
    

}
