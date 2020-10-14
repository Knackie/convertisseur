//
//  ViewController.swift
//  Convertisseur
//
//  Created by Mathieu Dreyer on 16/09/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var dataSource: TauxSource = TauxSource();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Taux.dataSource = dataSource;
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    @IBOutlet weak var Montant: NSTextField!;
    
    @IBOutlet weak var Taux: NSComboBox!
    
    @IBOutlet weak var Résultat: NSTextField!;
    
    @IBAction func convert(_ sender: Any) {
        self.Résultat.intValue = self.Montant.intValue * self.Taux.intValue;
    }
}

