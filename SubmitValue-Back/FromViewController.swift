//
//  FromViewController.swift
//  SubmitValue-Back
//
//  Created by 한규철 on 3/23/R4.
//

import UIKit

class FromViewController: UIViewController {
    
    @IBOutlet var email:UITextField!
    
    @IBOutlet var isUpdate:UISwitch!
    
    @IBOutlet var interval:UIStepper!
    
    
    @IBAction func onSubmit(_sender: Any) {
        
        let preVC = self.presentingViewController
        
        guard let vc = preVC as? ViewController else {
            return
        }
        
        //값을 전달
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        
        //이전 값으로 복귀한다.
        self.presentingViewController? .dismiss(animated: true)
        
    }
    
}
