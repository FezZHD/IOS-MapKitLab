//
//  WebObject.swift
//  map
//
//  Created by Evgeni' Roslik on 19/04/2017.
//  Copyright © 2017 Evgeni' Roslik. All rights reserved.
//

import Foundation


public class WeatherService{

    init(){
        
    }
    
    
    var cityDictionary:[String: Int] = ["NY": 5106292, "Washington": 5549222, "Madison": 5229526, "Atlanta": 4180439];
    
    
    public func GetWeatherArrayInfo() -> [WeatherStats]{
        let token = GetToken();
        print(token);
        
        
        return [WeatherStats]();
    }
    
    
    
    private func GetToken() -> String{
        let path = Bundle.main.path(forResource: "Info", ofType: "plist");
        let dictionary = NSDictionary(contentsOfFile: path!);
        return dictionary?.object(forKey: "ApiToken") as! String;
    }
}
