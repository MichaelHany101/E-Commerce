//
//  TabBarModel.swift
//  E-Commerce
//
//  Created by Michael Hany on 28/11/2023.
//

import Foundation
import SwiftUI

enum Tab : String, CaseIterable{
    case Home = "house.fill"
    case Search = "magnifyingglass"
    case Notification = "bell"
    case Cart = "bag"
    case Profile = "person"
    
    var Tabname : String {
        switch self {
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notification:
            return "Alert"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}
