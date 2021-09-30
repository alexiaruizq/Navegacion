//
//  RosaController.swift
//  Navegacion
//
//  Created by Alumno on 9/29/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class RosaConroller: UIViewController {
    
    var nombre = ""
    var matricula  = ""
    var promedio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doTapJose(_ sender: Any) {
        nombre = "Carlos"
        matricula = "123"
        promedio = "9,1"
        
        self.performSegue(withIdentifier: "goToAmarillo", sender: self)
    }
    
    @IBAction func doTapAna(_ sender: Any) {
        nombre = "German"
        matricula = "456"
        promedio = "9,2"
        self.performSegue(withIdentifier: "goToAmarillo", sender: self)
    }
    
    
    @IBAction func doTapPedro(_ sender: Any) {
        nombre = "Dexter"
        matricula = "789"
        promedio = "9,3"
        self.performSegue(withIdentifier: "goToAmarillo", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! AmarilloController
        destino.nombre = nombre
        destino.promedio = promedio
        destino.matricula = matricula
        
    }
}
