//
//  ViewController.swift
//  IdadeCachorro
//
//  Created by user on 26/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var legendaResultado: UILabel!
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    @IBAction func descobrirIdade(_ sender: Any) {
        let idade = Int(campoIdadeCachorro.text!)! * 7
        legendaResultado.text = "A idade do cachorro é:" + String(idade)
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Idade de Cachorro")
        
    }


}

