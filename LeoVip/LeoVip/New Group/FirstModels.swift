//
//  FirstModels.swift
//  LeoVip
//
//  Created by tecH on 13/05/20.
//  Copyright (c) 2020 vijayvir Singh. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum First
{
  // MARK: Use cases
  
  enum Something
  {
    struct Request
    {
    }
    struct Response
    {
    }
    struct CandyViewModel
    {
        let title: String
        let description: String
        let price: String
        let imageName: String
    }
    
    struct TotalPriceViewModel {
        let totalPrice: String
        let totalInclTax: String
        let vat: String
        let quantity: String
    }
    
  }
}
