//
//  ResultViewController.swift
//  NorainuCalcApp
//
//  Created by norainu on 2018/10/01.
//  Copyright © 2018 norainu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var price: Int = 0
    var percent:Int = 0

  @IBOutlet weak var resultField: UITextField!
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultField.text =  String(Int(Float(price) * (1 - (Float(percent) / 100))))
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
