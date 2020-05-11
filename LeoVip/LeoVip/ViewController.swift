//
//  ViewController.swift
//  LeoVip
//
//  Created by tecH on 09/05/20.
//  Copyright © 2020 vijayvir Singh. All rights reserved.
//

import UIKit
class Presenter {
var contoller : Controller?
    
}
class Interator {
    var firstWorker = FirstWorker()
}

class FirstWorker {
    let model : Model = Model()
}
class SecondWorker {
    
    
}


class Model {
    
}
// https://medium.com/@saad.eloulladi/clean-architecture-for-ios-viper-vip-c19de40b71e2
class Controller {
    
    var interactor: Interator? = Interator()
    var view = View()
}

class View {
    
}

class Router {
     var contoller : Controller?
}

class ViewController: UIViewController {
    var controller =  Controller()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

