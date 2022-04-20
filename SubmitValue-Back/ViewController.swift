//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by 한규철 on 3/22/R4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultEmail: UILabel!
    

    @IBOutlet var resultUpdate: UILabel!
    
    
    @IBOutlet var resultInterval: UILabel!
    
    
    //밑에 3개 값을 전달받을 프로퍼티들
    
    //이메일 값을 전달받을 속성
    var paramEmail: String?
    //자동 갱신 여부를 전달받을 속성
    var paramUpdate: Bool?
    //갱신주기 값을 전달받을 속성
    var paramInterval: Double?
    
    
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail {
            resultEmail.text = email
        }
        
        if let update = paramUpdate {
            resultUpdate.text = update==true ? "자동갱신" : "자동갱신안함"
        }
        
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분 마다"
        }
    }
}

