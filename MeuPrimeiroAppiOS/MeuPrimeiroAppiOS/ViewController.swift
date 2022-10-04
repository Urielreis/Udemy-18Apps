//
//  ViewController.swift
//  MeuPrimeiroAppiOS
//
//  Created by user on 14/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtLogin: UITextField!
    @IBOutlet var txtPassaword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createFilms() {
        let film1 = Film(name: "O Senhor dos Aneis: O Retorno do Rei", imageName: "senhordoaneis", isMyFavorite: true)
        
        let film2 = Film(name: "Harry Potter e a Pedra Filosofal", imageName: "harrypotter", isMyFavorite: false)
        
        let film3 = Film(name: "Os Vigadores: Endgame", imageName: "vingadores", isMyFavorite: true)
        
        let film4 = Film(name: "Coracao Valente", imageName: "coracaoValente", isMyFavorite: true)
        
        let film5 = Film(name: "De Volta para o Futuro 1", imageName: "deVoltaFuturo1", isMyFavorite: true)
        
        let film6 = Film(name: "De Volta para o Futuro 2", imageName: "deVoltaFuturo2", isMyFavorite: false)
        
        let film7 = Film(name: "Star Wars: O Imperio contra ataca", imageName: "starWars5", isMyFavorite: false)
        
        let film8 = Film(name: "Star Wars: O retorno do Jedi", imageName: "starWars6", isMyFavorite: true)
        
        let film9 = Film(name: "The Matrix 1", imageName: "matrix1", isMyFavorite: true)
        
        let film10 = Film(name: "Joker", imageName: "joker", isMyFavorite: false)
        
        let film11 = Film(name: "Shrek", imageName: "shrek", isMyFavorite: false)
        
        DataFilms.films.append(film1)
        DataFilms.films.append(film2)
        DataFilms.films.append(film3)
        DataFilms.films.append(film4)
        DataFilms.films.append(film5)
        DataFilms.films.append(film6)
        DataFilms.films.append(film7)
        DataFilms.films.append(film8)
        DataFilms.films.append(film9)
        DataFilms.films.append(film10)
        DataFilms.films.append(film11)
        
        
    }
    

    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "Uriel" && txtPassaword.text == "1234") {
            DataFilms.films.removeAll()
            createFilms()
            performSegue(withIdentifier: "tela2", sender: self)
            
        } else {
            let alert = UIAlertController(title: "Alerta", message: "Erro no login/Senha", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
        }
    }
    
}

