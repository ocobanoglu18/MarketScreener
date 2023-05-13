//
//  MscreenerText.swift
//  mscreener
//
//  Created by Adnan Cobanoglu on 18.04.2023.
//

import Foundation
import SwiftUI

public enum MscreenerText: String{
    case mainheadertext
    case twitter
    case reddit
    case blog
    case news
    case telegram
    
    
    

    public var string: String {
           NSLocalizedString(
            self.rawValue,
               tableName: "Localizable",
               comment: self.rawValue
           )
       }
       
       public var uppercasedString:String{
           self.string.uppercased(with: Locale(identifier: "tr_TR"))
       }
    }

extension MscreenerText {
    public var asText: SwiftUI.Text{
        Text(self.string)
    }
}
