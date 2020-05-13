//
//  FirstPresenter.swift
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

protocol FirstPresentationLogic
{  var closureDidValueChange : ((First.Something.CandyViewModel)-> Void)?{get set}
  func presentSomething(response: First.Something.Response)
  func interactor(_ interactor: FirstBusinessLogic, didFetch object: CandyEntity)
    func interactor(_ interactor: FirstBusinessLogic, didUpdateTotalPrice totalPrice:Float, totalInclTax:Float,vat:Float, quantity:Int)
}

class FirstPresenter: FirstPresentationLogic
{
    var closureDidValueChange: ((First.Something.CandyViewModel) -> Void)?
    
   
    
    
    
    
    func interactor(_ interactor: FirstBusinessLogic, didUpdateTotalPrice totalPrice: Float, totalInclTax: Float, vat: Float, quantity: Int) {
        let totalPriceText = "Total Price : \(totalPrice)€"
             let totalInclTaxText = "Incl Tax : \(totalInclTax)€"
             let vatText = "Tax : \(vat)%"
             let quantity = "Quantity : \(quantity)"
             
        let totalPriceViewModel = First.Something.TotalPriceViewModel(totalPrice: totalPriceText,
                                                           totalInclTax: totalInclTaxText,
                                                           vat: vatText,
                                                           quantity: quantity)
             viewController?.display(totalPriceViewModel: totalPriceViewModel)
    }
    
   
    
  weak var viewController: FirstDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: First.Something.Response)
  {
  
  }
   func interactor(_ interactor: FirstBusinessLogic, didFetch object: CandyEntity) {
    
     let priceText = "\(object.price) €"
    
       let soome   = First.Something.CandyViewModel(title: object.title,
       description: object.description,
       price: priceText,
       imageName: object.imageName)
    closureDidValueChange?(soome)
    viewController?.display(CandyViewModel: soome)
    }
    
}
