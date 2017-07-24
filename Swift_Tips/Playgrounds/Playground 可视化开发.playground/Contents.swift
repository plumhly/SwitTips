//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

/*
let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
label.text = "hello libo"
label.backgroundColor = UIColor.red
PlaygroundPage.current.liveView = label
*/

/*
class ViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected: \(indexPath.row)")
    }
}

let vc = ViewController()
PlaygroundPage.current.liveView = vc
*/

func printLog<T>(message: T, file: String = #file, method: String = #function, line: Int = #line) {
    #if DEBUG
    print("\((file as NSString).lastPathComponent)[\(line)],\(method):\(message)")
    #endif
}

func plum() {
    printLog(message: "libo")
}

plum()
