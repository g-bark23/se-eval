//
//  ViewController.swift
//  ticTacToe
//
//  Created by Garrett Barker on 2/9/18.
//  Copyright © 2018 Garrett Barker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var pos0: UIButton!
    @IBOutlet var pos1: UIButton!
    @IBOutlet var pos2: UIButton!
    @IBOutlet var pos3: UIButton!
    @IBOutlet var pos4: UIButton!
    @IBOutlet var pos5: UIButton!
    @IBOutlet var pos6: UIButton!
    @IBOutlet var pos7: UIButton!
    @IBOutlet var pos8: UIButton!
    @IBOutlet var playerTurn: UILabel!
    @IBOutlet var startGame: UIButton!
    var player = false
    var symbol = ""
    @IBOutlet var startGameButton: UIButton!
    
    @IBAction func resetGame(_ sender: Any) {
        resetBoard()
    }
    
    @IBAction func startGame(_ sender: Any) {
        enableAllButtons()
        startGameButton.isEnabled = false
        changePlayersTurn()
    }
    @IBAction func updateChoice(_ sender: Any) {
        let myButton = sender as! UIButton
        switch myButton.tag{
        case 0:
            pos0.setTitle(symbol, for: .normal)
            pos0.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 1:
            pos1.setTitle(symbol, for: .normal)
            pos1.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 2:
            pos2.setTitle(symbol, for: .normal)
            pos2.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 3:
            pos3.setTitle(symbol, for: .normal)
            pos3.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 4:
            pos4.setTitle(symbol, for: .normal)
            pos4.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 5:
            pos5.setTitle(symbol, for: .normal)
            pos5.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 6:
            pos6.setTitle(symbol, for: .normal)
            pos6.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 7:
            pos7.setTitle(symbol, for: .normal)
            pos7.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
        case 8:
            pos8.setTitle(symbol, for: .normal)
            pos8.isEnabled = false
            changePlayersTurn()
            checkForWinner()
            break
            
        default:
            break
        }
    }
    
    func getSymbol(){
        if(player == false){
            symbol = "X"
        }else{
            symbol = "O"
        }
    }
    
    func changePlayersTurn(){
        if(player == false){
            playerTurn.text = "Player O Turn"
            player = true
            getSymbol()
        }else{
            playerTurn.text = "Player X Turn"
            player = false
            getSymbol()
        }
    }
    
    func checkForWinner(){
        if(pos0.titleLabel?.text == pos1.titleLabel?.text && pos1.titleLabel?.text == pos2.titleLabel?.text && pos0.titleLabel?.text != ""){
            let winner = pos0.titleLabel?.text!
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            pos0.backgroundColor = UIColor.yellow
            pos1.backgroundColor = UIColor.yellow
            pos2.backgroundColor = UIColor.yellow
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }else if(pos3.titleLabel?.text == pos4.titleLabel?.text && pos4.titleLabel?.text == pos5.titleLabel?.text && pos3.titleLabel?.text != ""){
            let winner = pos3.titleLabel?.text
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            pos3.backgroundColor = UIColor.yellow
            pos4.backgroundColor = UIColor.yellow
            pos5.backgroundColor = UIColor.yellow
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }else if(pos6.titleLabel?.text == pos7.titleLabel?.text && pos7.titleLabel?.text == pos8.titleLabel?.text && pos6.titleLabel?.text != ""){
            let winner = pos6.titleLabel?.text
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            pos6.backgroundColor = UIColor.yellow
            pos7.backgroundColor = UIColor.yellow
            pos8.backgroundColor = UIColor.yellow
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }else if(pos0.titleLabel?.text == pos3.titleLabel?.text && pos3.titleLabel?.text == pos6.titleLabel?.text && pos0.titleLabel?.text != ""){
            let winner = pos0.titleLabel?.text
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            pos0.backgroundColor = UIColor.yellow
            pos3.backgroundColor = UIColor.yellow
            pos6.backgroundColor = UIColor.yellow
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }else if(pos1.titleLabel?.text == pos4.titleLabel?.text && pos4.titleLabel?.text == pos7.titleLabel?.text && pos1.titleLabel?.text != ""){
            let winner = pos1.titleLabel?.text
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            pos1.backgroundColor = UIColor.yellow
            pos4.backgroundColor = UIColor.yellow
            pos7.backgroundColor = UIColor.yellow
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }else if(pos2.titleLabel?.text == pos5.titleLabel?.text && pos5.titleLabel?.text == pos8.titleLabel?.text && pos2.titleLabel?.text != ""){
            let winner = pos2.titleLabel?.text
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            pos2.backgroundColor = UIColor.yellow
            pos5.backgroundColor = UIColor.yellow
            pos8.backgroundColor = UIColor.yellow
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }else if(pos0.titleLabel?.text == pos4.titleLabel?.text && pos4.titleLabel?.text == pos8.titleLabel?.text && pos0.titleLabel?.text != ""){
            let winner = pos0.titleLabel?.text
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            pos0.backgroundColor = UIColor.yellow
            pos4.backgroundColor = UIColor.yellow
            pos8.backgroundColor = UIColor.yellow
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }else if(pos2.titleLabel?.text == pos4.titleLabel?.text && pos4.titleLabel?.text == pos6.titleLabel?.text && pos2.titleLabel?.text != ""){
            let winner = pos2.titleLabel?.text
            let alert = UIAlertController(title: "Winner!", message: "Player " + winner! + " is the winner!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            playerTurn.text = "Game Over - Please reset board"
            pos2.backgroundColor = UIColor.yellow
            pos4.backgroundColor = UIColor.yellow
            pos6.backgroundColor = UIColor.yellow
            disableAllButtons()
        }else if (pos0.isEnabled == false && pos1.isEnabled == false && pos2.isEnabled == false && pos3.isEnabled == false && pos4.isEnabled == false && pos5.isEnabled == false && pos6.isEnabled == false && pos7.isEnabled == false && pos8.isEnabled == false){
            let alert = UIAlertController(title: "Tie!", message: "Game is a cat", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            playerTurn.text = "Game Over - Please reset board"
            disableAllButtons()
        }
    }
    
    func enableAllButtons(){
        pos0.isEnabled = true
        pos1.isEnabled = true
        pos2.isEnabled = true
        pos3.isEnabled = true
        pos4.isEnabled = true
        pos5.isEnabled = true
        pos6.isEnabled = true
        pos7.isEnabled = true
        pos8.isEnabled = true
    }
    
    func disableAllButtons(){
        pos0.isEnabled = false
        pos1.isEnabled = false
        pos2.isEnabled = false
        pos3.isEnabled = false
        pos4.isEnabled = false
        pos5.isEnabled = false
        pos6.isEnabled = false
        pos7.isEnabled = false
        pos8.isEnabled = false
    }
    
    func resetBoard(){
        pos0.titleLabel?.text = ""
        pos0.setTitle("", for: .normal)
        pos1.titleLabel?.text = ""
        pos1.setTitle("", for: .normal)
        pos2.titleLabel?.text = ""
        pos2.setTitle("", for: .normal)
        pos3.titleLabel?.text = ""
        pos3.setTitle("", for: .normal)
        pos4.titleLabel?.text = ""
        pos4.setTitle("", for: .normal)
        pos5.titleLabel?.text = ""
        pos5.setTitle("", for: .normal)
        pos6.titleLabel?.text = ""
        pos6.setTitle("", for: .normal)
        pos7.titleLabel?.text = ""
        pos7.setTitle("", for: .normal)
        pos8.titleLabel?.text = ""
        pos8.setTitle("", for: .normal)
        disableAllButtons()
        pos0.backgroundColor = UIColor.white
        pos1.backgroundColor = UIColor.white
        pos2.backgroundColor = UIColor.white
        pos3.backgroundColor = UIColor.white
        pos4.backgroundColor = UIColor.white
        pos5.backgroundColor = UIColor.white
        pos6.backgroundColor = UIColor.white
        pos7.backgroundColor = UIColor.white
        pos8.backgroundColor = UIColor.white
        startGameButton.isEnabled = true
        player = false
        symbol = ""
        playerTurn.text = "Press Start Game to play"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBoard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

