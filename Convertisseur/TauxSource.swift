//
//  TauxSource.swift
//  Convertisseur
//
//  Created by Mathieu Dreyer on 16/09/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import Cocoa

class TauxSource: NSObject, NSComboBoxDataSource {
    
    let taux = [5,10,20,50,100];
    func numberOfItems(in comboBox: NSComboBox) -> Int {
        return taux.count;

    }
    func comboBox(_ comboBox: NSComboBox, objectValueForItemAt index: Int) -> Any? {
        return taux[index];
    }
}
