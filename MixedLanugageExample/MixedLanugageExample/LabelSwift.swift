//
//  LabelSwift.swift
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

import UIKit

public class LabelSwift: UILabel {

    required public init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)!
        self.initText()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initText()
    }
    
    func initText() {
        let componentObjectiveC = ComponentObjectiveC()
        self.text = componentObjectiveC.sayHello("Objective C")
    }
}
