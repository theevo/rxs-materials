import UIKit
import PlaygroundSupport

class ViewController:UIViewController {
    
    var array = [1, 2, 3]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let button = UIButton(frame: CGRect(x: 20, y: 20, width: 200, height: 50))
        button.setTitle("Button", for: .normal)
        button.backgroundColor = UIColor.red
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(printNext), for: .touchUpInside)
    }

    @IBAction private func printNext() {
      print(array[currentIndex])
      
      if currentIndex != array.count - 1 {
        currentIndex += 1
      }
    }
}

let viewController = ViewController()
PlaygroundPage.current.liveView = viewController
//PlaygroundPage.current.needsIndefiniteExecution = true
