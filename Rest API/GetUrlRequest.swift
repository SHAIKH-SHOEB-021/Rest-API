//
//  GetUrlRequest.swift
//  Rest API
//
//  Created by shoeb on 06/01/23.
//

import UIKit

class GetUrlRequest: NSObject, URLSessionDelegate, URLSessionDownloadDelegate {
    
    var webData : Data?
    var session : URLSession{
        let defualtConfig = URLSessionConfiguration.default
        defualtConfig.requestCachePolicy =  NSURLRequest.CachePolicy.reloadIgnoringLocalAndRemoteCacheData
        let session1 = URLSession(configuration: defualtConfig, delegate: self, delegateQueue: nil)
        return session1
    }

    func getData(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        let task = session.downloadTask(with: url!)
        task.resume()
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        do{
            webData = try Data(contentsOf: location)
            let responseString = String(data: webData!, encoding: String.Encoding.utf8)
            print("responseString \(responseString!)")
        }catch{
            print("Error")
        }
    }
    
}
