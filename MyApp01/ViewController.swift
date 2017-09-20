//
//  ViewController.swift
//  MyApp01
//
//  Created by 謝尚霖 on 2017/9/15.
//  Copyright © 2017年 sunni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBAction func click(_ sender: Any) {
        
        
        myLabel.text = createLottery()
        
    }
    
    
    
    
    @IBAction func showDialog(_ sender: Any) {
        
             sDialog()
        
    }
    
    private func sDialog(){
        let alert = UIAlertController(title: "Welcome", message: "恭喜老爺", preferredStyle: .alert)
        let action = UIAlertAction(title:"OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: {
        print("OK")
        })
    }
    
    
    private func createLottery() -> String {
        
        var set:Set<Int> = []
        while set.count < 6 {
            set.insert(Int(arc4random_uniform(49)+1))
        }
        var ret = ""
        for lottery in set {
            ret += "\(lottery)  "
        }
        
        
        return ret
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

