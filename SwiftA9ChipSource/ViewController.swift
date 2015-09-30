//
//  ViewController.swift
//  SwiftA9ChipSource
//
//  Created by David Wagner on 30/09/2015.
//

import UIKit

@asmname("MGCopyAnswer") func MGCopyAnswer(key:CFStringRef) -> CFStringRef

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "A9 CPU variant: \(platform())"
    }
    
    func platform() -> String {
        let platform = MGCopyAnswer("HardwarePlatform") as String
        switch platform {
        case "s8000": return "Samsung (\(platform))"
        case "s8003": return "TSMC (\(platform))"
        default: return "Unknown \(platform)"
        }
    }
}

