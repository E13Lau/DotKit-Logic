//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import DotKit_Logic

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        UILabel()
            .dk
            .frame(CGRect(x: 0, y: 200, width: 200, height: 20))
            .textAlignment(.center)
            .if(Bool.random(), {
                $0.text("Bool.random() = True")
                    .textColor(.black)
            }, else: {
                $0.text("Bool.random() = False")
                    .textColor(.red)
            })
            .if {
                $0.superview == nil
            } true: {
                $0.asSubviewAdd(to: view)
            }
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
