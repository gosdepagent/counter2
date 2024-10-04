//
//  ViewController.swift
//  counter2
//
//  Created by Yanye Velikanova on 9/29/24.

//
//
//

import UIKit

class ViewController: UIViewController {
    var numbersOfTaps: Int = 0
    @IBOutlet weak var plusButton: UIImageView!
    @IBOutlet weak var numberOfTapsLabel: UILabel!
    @IBOutlet weak var minusButton: UIImageView!
    @IBOutlet weak var makeItZeroButton: UIButton!
    @IBOutlet weak var statInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minusButton.backgroundColor = UIColor.blue
        
    }

    @IBAction func tappedButton(_ sender: Any) {
        numbersOfTaps += 1
        numberOfTapsLabel.text = "Количество нажатий: \(numbersOfTaps)"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.mm.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        
        statInfo.text += "\n[\(currentDate)]: Значение изменено на +1"
    }
    
    @IBAction func minusButton(_ sender: Any) {
        numbersOfTaps -= 1
        numberOfTapsLabel.text = "Колличество нажатий: \(numbersOfTaps)"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.mm.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        
        statInfo.text += "\n[\(currentDate)]: Значение изменено на -1"
        
        
        if numbersOfTaps < 0 {
            numbersOfTaps = 0
            numberOfTapsLabel.text = "0"
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.mm.yyyy HH:mm:ss"
            let currentDate = dateFormatter.string(from: Date())

            statInfo.text += "\n[\(currentDate)]: попытка уменьшить значение счётчика ниже 0"
        } else {
            statInfo.text += "\n[\(currentDate)]: Значение изменено на -1"
        }
    }
    
    @IBAction func obnulit(_ sender: Any) {
        if numbersOfTaps > 0 {
            numbersOfTaps = 0
            numberOfTapsLabel.text = "Колличество нажатий: 0"
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.mm.yyyy HH:mm:ss"
            let currentDate = dateFormatter.string(from: Date())
            
            statInfo.text += "\n[\(currentDate)]:Значение сброшено"
            
        } else if numbersOfTaps < 0 {
            numbersOfTaps = 0
            numberOfTapsLabel.text = "Количество нажатий: 0"
            
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.mm.yyyy HH:mm:ss"
            let currentDate = dateFormatter.string(from: Date())
            
            statInfo.text += "\n[\(currentDate)]:Значение сброшено"
        }
    }
    
    
    
}

