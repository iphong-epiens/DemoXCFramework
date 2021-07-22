//
//  DemoViewController.swift
//  demoframework
//
//  Created by Inpyo Hong on 2021/07/22.
//

import UIKit
//import RxSwift
//import RxCocoa

public class DemoViewController: UIViewController {
   // var disposeBag = DisposeBag()
    
    @IBOutlet weak var btn: UIButton!
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        internalFunc()
        
//        btn.rx.tap.asObservable()
//            .subscribe(onNext: {
//                print("tap btn")
//            })
//            .disposed(by: self.disposeBag)
    }
    

    internal func internalFunc() {
        print("call internalFunc")
    }
}
