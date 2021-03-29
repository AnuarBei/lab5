//
//  ViewController.swift
//  Lab5
//
//  Created by Ануар Беисов on 29.03.2021. 
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Btn1(_ sender: Any) {
    }
    @IBAction func newsBtn(_ sender: Any) {
    }
    @IBAction func admissionsBtn(_ sender: Any) {
    }
    @IBAction func studentsBtn(_ sender: Any) {
    }
    @IBAction func eventsBtn(_ sender: Any) {
    }
    
    
    
    @IBOutlet weak var studentBtn: UIButton!
    @IBOutlet weak var newsBtn: UIButton!
    @IBOutlet weak var aboutBtn: UIButton!
    @IBOutlet weak var eventsBtn: UIButton!
    @IBOutlet weak var admissionsBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        aboutBtn.layer.cornerRadius = 25
        newsBtn.layer.cornerRadius = 25
        admissionsBtn.layer.cornerRadius = 25
        eventsBtn.layer.cornerRadius = 25
        studentBtn.layer.cornerRadius = 25
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "StudentsSegue"{
            
            let destination = segue.destination as! NewsDetailViewController
destination.myUrl = "https://kbtu.edu.kz/ru/students/distantsionnoe-obrazovanie"
        
        }else if segue.identifier == "NewsSegue"{
            let destination = segue.destination as! NewsViewController
            destination.isNews = true
        }else if segue.identifier == "EventsSegue"{
            let destination = segue.destination as! NewsViewController
            destination.isNews = false
        }
    
    
    }


}

