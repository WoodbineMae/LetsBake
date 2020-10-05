//
//  ViewController.swift
//  LetsBake
//
//  Created by Kara Fraine on 10/4/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonOnTap: UIButton!
    
    @IBAction func buttonOnTapAlerts(_ sender: Any) {  let myAlertOne = UIAlertController(title: "Oopsie !", message: "Lets Bake Notice!", preferredStyle: <#T##UIAlertController.Style#>)
        myAlertOne.addAction(UIAlertAction(title: "Dang! not enough ingredients.", style: .default, handler: nil))
        myAlertOne.addAction(UIAlertAction(title: "try againe?", style: .default, handler: nil))
        
        
        
    }
    @IBAction func Buttonalert(_ sender: Any) { let myAlertTwo = UIAlertController(title: "You baked an aweome cake", message: "Lets Bake Notice !", preferredStyle: <#T##UIAlertController.Style#>)
        myAlertTwo.addAction(UIAlertAction(title: "Amazing", style:.default, handler: nil))
        myAlertTwo.addAction(UIAlertAction(title: "Bake another cake", style:.default, handler: nil))
      
        
        self.present(myAlertTwo, animated: true)
    }
    //Ingredients section
    @IBOutlet weak var wetLabel: UILabel!
    
    @IBOutlet weak var textviewOne: UITextView!
    
    @IBOutlet weak var dryLabel: UILabel!
    
    @IBOutlet weak var wIngredientTextfieldOne: UITextField!
    
    
    @IBOutlet weak var DIngredientTextfieldOne: UITextField!
    
    var wetingredients = " "
    let intOne = Int(_builtinIntegerLiteral: wetingredients) ?? 0
    var dryingredients = ""
    let intTwo = Int(dryingredients) ?? 0
    
    
    //wet ingredent section
    @IBOutlet weak var WaddonTap: UIButton!
    
    
    @IBAction func Waddaction(_ sender: Any) {wetingredients.append(wIngredientTextfieldOne.text ?? "Blank")
        wetLabel.text = "You added \(wIngredientTextfieldOne) \n "
        
        
}
    
    
    
    
    
    //dry ingredient section
    @IBOutlet weak var DaddonTap: UIButton!
   
    @IBAction func Daddaction(_ sender: Any) {dryingredients.append(DIngredientTextfieldOne.text ?? "Blank")
        dryLabel.text = "You added \(dryingredients)\n "
    }
    
    
    //mix button section
    @IBAction func mixOutlet(_ sender: Any) {
    }
    
    @IBAction func mixActionOnTap(_ sender: Any) { for mixing in 0...wetingredients.count-1 { textviewOne.text += "You mixed in \(wetingredients[mixing]) "
    }
    }
    
    // textviewsection (ignore name spelling)
    @IBOutlet weak var textfieldOne: UITextView!
    
    
    //Bake section
    @IBOutlet weak var bakeButtonOutlet: UIButton!
    
    
    @IBAction func bakeOnTap(_ sender: Any) {if wetingredients >= 3 { Buttonalert(<#T##sender: Any##Any#>)
    } else{ buttonOnTapAlerts(<#T##sender: Any##Any#>)}
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

