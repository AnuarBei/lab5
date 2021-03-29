//
//  NewsDetailViewController.swift
//  Lab5
//
//  Created by Ануар Беисов on 29.03.2021.
//  

import UIKit
import WebKit

class NewsDetailViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    var myUrl: String?
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: myUrl ?? "https://kbtu.edu.kz/ru/latest-news/1565-luchshij-prepodavatel-vuza-2022")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true

        // Do any additional setup after loading the view.
    }
    

}
