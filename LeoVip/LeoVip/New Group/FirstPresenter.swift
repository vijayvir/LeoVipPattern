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
{
  func presentSomething(response: First.Something.Response)
}

class FirstPresenter: FirstPresentationLogic
{
  weak var viewController: FirstDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: First.Something.Response)
  {
    let viewModel = First.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
