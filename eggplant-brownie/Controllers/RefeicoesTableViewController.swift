//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Douglas de Araujo Moraes on 17/04/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit


class RefeicoesTableViewController: UITableViewController, AdicionaRefeicaoDelegate {
    
    var refeicoes = [Refeicao(nome: "Macarão", felicidade: 5),
                     Refeicao(nome: "Feijoada", felicidade: 1),
                     Refeicao(nome: "Pizza", felicidade: 5)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
    
    func add(_ receicao: Refeicao) {
        refeicoes.append(receicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adicionar" {
            if let viewController = segue.destination as? ViewController {
                viewController.delegate = self
            }
        }
       
    }
}
