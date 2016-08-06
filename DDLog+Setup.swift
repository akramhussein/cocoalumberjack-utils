//
//  DDLog+Setup.swift
//
//  Created by Akram Hussein on 06/08/2016.
//  Copyright © 2016 Akram Hussein. All rights reserved.
//

import Foundation
import CocoaLumberjack

extension DDLog
{
    static func setup(release: DDLogLevel, debug: DDLogLevel)
    {
        // Logging
        #if RELEASE
            defaultDebugLevel = release
        #else
            defaultDebugLevel = debug
        #endif

        // TTY Logging
        setenv("XcodeColors", "YES", 0)
        let logger = DDTTYLogger.sharedInstance()
        logger.setXcodeColors()
        logger.logFormatter = CustomLogFormatter()
        self.addLogger(logger)
    }
}