//
//  EditSignViewController.swift
//  04-协议传值和闭包传值
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class EditSignViewController: UIViewController {

    @IBOutlet weak var signTF: UITextField!
    
    var signString:String?
    //var delegate:ChangeSignDelegate?
    var changeSignCallBack:((String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        signTF.text = signString
    }

    @IBAction func done(sender: UIButton) {
        self.dismissViewControllerAnimated(true) {
            
            //self.delegate?.changeSignValue(self.signTF.text!)
            if self.changeSignCallBack != nil {
                self.changeSignCallBack!(self.signTF.text!)
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
