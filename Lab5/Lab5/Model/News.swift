//
//  News.swift
//  Lab5
//
//  Created by Ануар Беисов on 29.03.2021.
//

import Foundation
import UIKit
class News{
    var title: String?
    var description: String?
    var image: UIImage?
    var url: String?
    init(title: String, desc: String, image: UIImage, url: String){
        self.title = title
        self.description = desc
        self.image = image
        self.url = url
    }
}
