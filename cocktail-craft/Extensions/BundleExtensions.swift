//
//  BundleExtensions.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 17/01/2023.
//

import Foundation

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
