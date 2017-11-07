//
//  DatabaseManager.swift
//  QuestionOfTheDay
//
//  Created by Mucherla,Veera Kishon Kumar on 11/6/17.
//

import Foundation

class DatabaseManager {
    let APPLICATION_ID = "C5D3D386-9E9A-8222-FF09-23717D506200"
    let API_KEY = "7DB43A50-171F-A4CF-FF38-C74142375F00"
    let SERVER_URL = "https://api.backendless.com"
    let backendless = Backendless.sharedInstance()!
    
    init(){
        backendless.hostURL = SERVER_URL
        backendless.initApp(APPLICATION_ID, apiKey:API_KEY)
        
    }
    
    func retriveQuestion() -> String {
        
        return ""
    }
}
