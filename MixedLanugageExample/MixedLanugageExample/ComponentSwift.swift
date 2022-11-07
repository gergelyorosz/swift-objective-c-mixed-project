//
//  ComponentSwift.swift
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

import UIKit

@objc
public class ComponentSwift: NSObject {
    
    @objc
    func sayHello(name: String) -> String {
        let nameForGreeting = name.count == 0 ? "World" : name;
        let greeting = "Hello " + nameForGreeting + "!";
        return greeting;
    }
    
}
