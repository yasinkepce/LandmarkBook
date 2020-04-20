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
    
    
    var choosenLandmarkName = ""
    var choosenLandmarkImage = UIImage()
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        
        
        
        landmarkNames.append("TOKAT SAAT KULESİ")
        landmarkNames.append("LONDON EYE")
        landmarkNames.append("STATUE OF LIBERTY")
        landmarkNames.append("KREMLIN")
        landmarkNames.append("EYFEL KULESİ")
        
        
        landmarkImages.append(UIImage(named: "saatkulesi")!)
        landmarkImages.append(UIImage(named: "londoneye")!)
        landmarkImages.append(UIImage(named: "liberty")!)
        landmarkImages.append(UIImage(named: "kremlin")!)
        landmarkImages.append(UIImage(named: "eyfel")!)
        
        navigationItem.title = "LANDMARK BOOK" //Uygulamanın Başlığını Değiştirdik
    }
    
   
    //Sola çekerek silme özelliği ekliyoruz
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        landmarkNames.remove(at: indexPath.row)
        landmarkImages.remove(at: indexPath.row)
        myTableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //tıklanınca çalışıyor
        
        
        choosenLandmarkName = landmarkNames[indexPath.row]
        choosenLandmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    
    //Bu iki fonksiyonu mutlaka yazmamız gerekiyor
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return landmarkNames.count // satır sayısını belirliyoruz.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {  //Segue'ye veri aktarımı
        if segue.identifier == "toImageViewController"{
         
            let toSegueVC = segue.destination as! ImageViewController
            
            toSegueVC.selectedLandmarkName = choosenLandmarkName
            toSegueVC.selectedLandmarkImage = choosenLandmarkImage
        }
    }


}

