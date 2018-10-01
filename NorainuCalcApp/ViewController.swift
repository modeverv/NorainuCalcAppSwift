//
//  ViewController.swift
//  NorainuCalcApp
//
//  Created by norainu on 2018/09/27.
//  Copyright © 2018 norainu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var priceField: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func tap1Button(_ sender: Any) {
    addNumber(number: "1")
  }

  @IBAction func tap00Button(_ sender: Any) {
    addNumber(number: "00")
  }

  @IBAction func tapCButton(_ sender: Any) {
      priceField.text = "0"
  }

  func addNumber(number: String) {
    let value = priceField.text! + number
    if let price = Int(value) {
      priceField.text = "\(price)"
    }
  }

  @IBAction func restart(_ segue:UIStoryboardSegue) {
    priceField.text = "0"
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let viewController = segue.destination as! PercentViewController
    if let price = Int(priceField.text!) {
      viewController.price = price
    }
  }
}

