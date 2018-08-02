//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by TOGNI Elie on 02/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .blue
            if chanson != nil {
                chargerVideo(chanson: chanson!)
            }
    }
    
    func chargerVideo(chanson: Chanson){
        if let url = URL(string: chanson.videoUrl){
            let requete = URLRequest(url: url)
            webView.load(requete)
        }
    }


}
