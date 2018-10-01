//
//  PercentViewController.swift
//  NorainuCalcApp
//
//  Created by norainu on 2018/09/30.
//  Copyright © 2018 norainu. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {

    var price:Int = 0

    @IBOutlet weak var PercentField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func tap1Button(_ sender: Any) {
    addNumber(number: "1")
  }

  @IBAction func tap2Button(_ sender: Any) {
    addNumber(number: "2")
  }

  func addNumber(number: String) {
      let value = PercentField.text! + number
      if let percent = Int(value) {
        PercentField.text = "\(percent)"
      }
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let vC = segue.destination as! ResultViewController
    vC.price = self.price
    if let percent = Int(PercentField.text!) {
      vC.percent = percent
    }
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
