//
//  AppIcon.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 28/01/2023.
//

import Foundation

func getAppIcon() -> String? {
    guard let infoPlist = Bundle.main.infoDictionary else { return nil }
    guard let bundleIcons = infoPlist["CFBundleIcons"] as? NSDictionary else { return nil }
    guard let bundlePrimaryIcon = bundleIcons["CFBundlePrimaryIcon"] as? NSDictionary else { return nil }
    guard let bundleIconFiles = bundlePrimaryIcon["CFBundleIconFiles"] as? NSArray else { return nil }
    guard let appIcon = bundleIconFiles.lastObject as? String else { return nil }
    return appIcon
}
