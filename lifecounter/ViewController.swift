//
//  ViewController.swift
//  lifecounter
//
//  Created by Maxwell London on 4/20/22.
//

import UIKit

class ViewController: UIViewController {
    var P1HealthValue: Int = 20
    var P2HealthValue: Int = 20
    
    @IBOutlet weak var gameStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var P1Health: UILabel!
    
    @IBOutlet weak var P2Health: UILabel!
    
    func updateScreen(){
        P1Health.text = "\(P1HealthValue)"
        P2Health.text = "\(P2HealthValue)"
        checkGameStatus()
    }
    
    func checkGameStatus(){
        if(P1HealthValue <= 0 ){
            gameStatus.text = "PLAYER 2 WINS!"
        } else if (P2HealthValue <= 0){
            gameStatus.text = "PLAYER 1 WINS!"
        }
    }
    
    @IBAction func updateLifeP1(_ sender: UIButton){
        let action = sender.titleLabel?.text ?? "No Value"
        
        switch action{
        case "+1":
            P1HealthValue += 1
        case "-1":
            P1HealthValue -= 1
        case "+5":
            P1HealthValue += 5
        case "-5":
            P1HealthValue -= 5
        default:
            print("No health value was adjusted.")
        }
        
        updateScreen()
    }
    
    @IBAction func updateLifeP2(_ sender: UIButton) {
        let action = sender.titleLabel?.text ?? "No Value"
        
        switch action{
        case "+1":
            P2HealthValue += 1
        case "-1":
            P2HealthValue -= 1
        case "+5":
            P2HealthValue += 5
        case "-5":
            P2HealthValue -= 5
        default:
            print("No health value was adjusted.")
        }
        updateScreen()
    }
    
}

