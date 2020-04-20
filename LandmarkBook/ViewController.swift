//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Yasin Kepce on 20.04.2020.
//  Copyright © 2020 Yasin Kepce. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource { //bunlar ekleniyor? Şimdilik açıkmalasını bilmiyorum

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    
    //Bu iki fonksiyonu mutlaka yazmamız gerekiyor
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "deneme"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10 // satır sayısını belirliyoruz.
    }


}

