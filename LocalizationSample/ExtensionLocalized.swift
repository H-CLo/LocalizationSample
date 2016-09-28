//
//  ExtensionLocalized.swift
//  LocalizationSample
//
//  Created by HungCLo on 9/28/16.
//  Copyright © 2016 HungCLo. All rights reserved.
//

import Foundation

/**
 *  If you need to localize a lot of string, it's a good solution 
 *  to extense the String with NSLocalizedString.
 */
extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
