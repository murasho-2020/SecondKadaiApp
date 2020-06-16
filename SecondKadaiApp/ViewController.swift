//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Shousei  Murakami on 2020/06/15.
//  Copyright © 2020 shousei.murakami2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    // 遷移先から戻ってくるときに呼ばれるメソッドの準備
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
          // segueから遷移先のResultViewControllerを取得する
          let resultViewController:ResultViewController = segue.destination as! ResultViewController
          // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
          resultViewController.name = textField.text
          
      }
    
}

