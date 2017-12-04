//
//  ViewController.swift
//  ArabicTimeAgoExample
//
//  Created by blueMix on 12/4/17.
//  Copyright © 2017 Fomalhaut.io. All rights reserved.
//

import UIKit
import ArabicTimeAgo

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let itemDateStr = "2017-01-19 09:12:07"
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    
    if let date = formatter.date(from: itemDateStr) {
      print(TimeAgo.calculate(date: date, isAr: true))  // قبل 13 ساعة
      print(TimeAgo.calculate(date: date, isAr: false)) // 13 hours ago
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

