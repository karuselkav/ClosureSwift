//
//  APIManager.swift
//  Closures
//
//  Created by Karusel'ka . on 22.12.2022.
//

import Foundation
import UIKit

class APIManager {
    let networking = NetworkingManager()
    
    func downloadImage(didDownload : @escaping((UIImage)->())) {
        do {
            try! self.networking.request(RouterX.downloadImage([:]).asURLRequest(), onSuccess: { data in
                let image = UIImage(data: data) ?? UIImage()
                didDownload(image)
            }, onError: {_ in
                
            })
        }
    }
    
}
