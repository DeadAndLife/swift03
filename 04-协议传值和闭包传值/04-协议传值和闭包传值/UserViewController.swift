//
//  UserViewController.swift
//  04-协议传值和闭包传值
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

//协议的采纳:写在父类的后面,不需要<>
class UserViewController: UIViewController,ChangeSignDelegate {

    @IBOutlet weak var signLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func changeSignClick(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editVC = storyboard.instantiateViewControllerWithIdentifier("editVC") as! EditSignViewController
        editVC.signString = signLabel.text
//        //设置代理
//        editVC.delegate = self
        //设置需要回调的闭包
        editVC.changeSignCallBack = {
            self.signLabel.text = $0
        }
        self.presentViewController(editVC, animated: true, completion: nil)
        
    }
    func changeSignValue(string: String) {
        signLabel.text = string
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
