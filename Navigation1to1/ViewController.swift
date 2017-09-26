//
//  ViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 2017. 9. 26..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var onetwo: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier=="toOrderView"{
            let dest = segue.destination as! OrderViewController
            let order: String! = onetwo.titleForSegment(at: onetwo.selectedSegmentIndex)
            dest.title=order
            
            let out : String = "Thank you\n 주문내용: \(order!) 입니다"
            dest.info=out
            
            
        }
    }



}

