//
//  GitRouter.swift
//  Networking
//
//  Created by Karusel'ka on 07.07.2022.
//

import Foundation

public enum RouterX {
    case downloadImage ([String : Any])
    
}

extension RouterX : HTTPRouter {
    
    
    public var baseURLString: String {
        switch self {
        case .downloadImage: return "https://picsum.photos"
        
        default:                return ""
        }
    }
    
    public var path: String {
        switch self {
        case .downloadImage: return "/id/" + "\(Int.random(in: 0...150))" + "/500/700"
        default:                     return ""
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .downloadImage:         return .get
            
            
        default: return .get
        }
    }
    
    public var headers: HTTPHeaders? {
        switch self {
        case .downloadImage : return [:]
        default:                      return [:]
            
        }
    }
    
    public var parameters: Parameters? {
        return nil
    }
    
    
    
    public func asURLRequest() throws -> URLRequest {
        guard let url = URL(string: baseURLString + path) else {
            throw HTTPError.urlIsNil
        }
        
        var mutableURLRequest = URLRequest(url: url)
        mutableURLRequest.httpMethod = method.rawValue
        
        
        if let headers = headers {
            for header in headers {
                mutableURLRequest.setValue(header.value, forHTTPHeaderField: header.key)
            }
        }
        
        print(mutableURLRequest.url ?? "")
        
        
        switch self {

        case .downloadImage(let param):
            return mutableURLRequest
        }
        
    }
}
