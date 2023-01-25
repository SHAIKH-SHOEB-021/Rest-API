//
//  ViewController.swift
//  Rest API
//
//  Created by shoeb on 06/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var parser : GetUrlRequest?
    //https://jsonplaceholder.typicode.com/users
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parser = GetUrlRequest()
        parser!.getData()
        
    }
}
