//
//  DDTTYLogger+XcodeColor.swift
//
//  Created by Akram Hussein on 06/08/2016.
//  Copyright © 2016 Akram Hussein. All rights reserved.
//

import Foundation
import CocoaLumberjack

extension DDTTYLogger
{
    func setXcodeColors()
    {
        self.colorsEnabled = true
        self.setForegroundColor(.redColor(), backgroundColor: nil, forFlag: .Error)
        self.setForegroundColor(.orangeColor(), backgroundColor: nil, forFlag: .Warning)
        self.setForegroundColor(.blueColor(), backgroundColor: nil, forFlag: .Debug)
        self.setForegroundColor(.greenColor(), backgroundColor: nil, forFlag: .Info)
    }
}