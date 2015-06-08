
import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var labLose: WKInterfaceLabel!
    @IBOutlet weak var labWin: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        labLose.setText("负:\(lose)")
        labWin.setText("胜:\(win)")
    }
    //出锤子
    @IBAction func onCuiZi() {
        onComputer()
        m = 1
        //界面跳转
        self.presentControllerWithName("result", context: nil)
        
    }
    
    //出剪刀
    @IBAction func onJianDao() {
        onComputer()
        m = 2
        //界面跳转
        self.presentControllerWithName("result", context: nil)
    }
    
    //出布
    @IBAction func onBu() {
        onComputer()
        m = 3
        //界面跳转
        self.presentControllerWithName("result", context: nil)
    }
    
    //返回电脑出的拳
    func onComputer(){
        c = (random() % 3)+1//值是0 - 2
        m = 1 //1 - 3
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

//赢的次数
var win:Int = 0
//输的次数
var lose:Int = 0
//电脑出的拳
var c:Int = 1
//我的出拳
var m:Int = 1
