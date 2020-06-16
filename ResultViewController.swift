//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by Shousei  Murakami on 2020/06/15.
//  Copyright © 2020 shousei.murakami2. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
        // 受け取るためのプロパティ（変数）を宣言しておく
        var name: String? = ""  // "!"を"?"に変更した
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // 上記では、name を 0 と宣言していたが、
        // 1画面目のViewControllerから遷移するときにprepareForSegueで
        //nameの値を新たに代入されたので" ”が入っている
        
        let result = "こんにちは、" + name! + "さん" // "!"を挿入した
        
        label?.text = result  // "?"を入れたら成功した

    }
}
