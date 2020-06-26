//
//  nextViewController.swift
//  Swiftcalendar
//
//  Created by 白鳥慶太 on 2020/06/23.
//  Copyright © 2020 白鳥慶太. All rights reserved.
//

import UIKit
import FSCalendar

class nextViewController: UIViewController,FSCalendarDataSource,FSCalendarDelegate {
    
    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
       
     }
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
    let tmpDate = Calendar(identifier: .gregorian)
    let year = tmpDate.component(.year, from: date)
    let month = tmpDate.component(.month, from: date)
    let day = tmpDate.component(.day, from: date)
    Label.text = "\(year)/\(month)/\(day)"
        
    }
 
    
    
}

