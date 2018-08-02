//
//  TableauControleur.swift
//  Lecteur Youtube
//
//  Created by TOGNI Elie on 02/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class TableauControleur: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]() //Matrice vide
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    func ajouterChanson(){
        chansons = [Chanson]()
        let orelsan = Chanson(artiste: "Casseurs Flowters", titre: "Ils sont cools", code: "_DT-4-jJTZc")
        chansons.append(orelsan)
        let avicii = Chanson(artiste: "Avicii", titre: "Waiting For Love", code: "cHHLHGNpCSA")
        chansons.append(avicii)
        let tritonal = Chanson(artiste: "Tritonal ft. Angel Taylor", titre: "Getaway", code: "Vc8m6JLGgrc")
        chansons.append(tritonal)
        
        //ReloadData recharger les données et mettre à jour la tableview si besoin
        tableView.reloadData()
    }
    

}
