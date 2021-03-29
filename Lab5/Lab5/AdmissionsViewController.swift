//
//  AdmissionsViewController.swift
//  Lab5
//
//  Created by Ануар Беисов on 29.03.2021.
//  

import UIKit

class AdmissionsViewController: UIViewController {

    @IBAction func admissionBtn(_ sender: Any) {
    }
    @IBOutlet weak var admOutletBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        admOutletBtn.layer.cornerRadius = 25

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     let destination = segue.destination as! NewsDetailViewController
         destination.myUrl = "https://kbtu.studyspace.kz/"
    }

}
