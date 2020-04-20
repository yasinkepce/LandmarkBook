//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Yasin Kepce on 20.04.2020.
//  Copyright © 2020 Yasin Kepce. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        myImageView.image = selectedLandmarkImage
        myLabel.text = selectedLandmarkName
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
