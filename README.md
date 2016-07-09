
>本项目功能点概括
>
>1. 选中 PickerView 条目跳转至新界面展示对应图片
>
>2. 返回(学习，使用第 4 步后不需继续使用)
>
>3. 分享
>
>4. 导航 - Navigation Controller
>
>5. Tab Bar Controller
>
>6. Sketch 制作图标
>
>7. Auto Layout 分辨率适配

# 1. PickerView选中并展示对应图片

1. **绑定控件并初始化 UIPickerView 条目数量**

		// 绑定控件
		@IBOutlet weak var numPicker: UIPickerView!
    
    	// 初始化 UIPickerVIew 条目数量
    	let nums = ["num1", "num2", "num3", "num4", "num5"]

2. **扩展 ViewController**

		import UIKit
		
		extension ViewController: UIPickerViewDataSource {
		    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		        
		        // UIPickerView 栏目数量
		        return 1
		    }
		    
		    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		        
		        // ViewController 中定义的条目数量
		        return nums.count
		    }
		}
		
		
		extension ViewController: UIPickerViewDelegate {
		    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		        
		        return nums[row]
		        
		    }
		}
		
3. **在 viewDidLoad() 中绑定 UIPickerView 的扩展**

        numPicker.dataSource = self
        numPicker.delegate = self
        
4. **在 Storyboard 中给 Segue 设定 Identifier**

5. **ViewController 中重写 prepareForSegue()**

	>prepareForSegue()：Segue跳转前会调用

		override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		        
		    // 匹配步骤 4 中设定的 Identifier
	        if segue.identifier == "GoToGallery" {
	            
	            // 转换类型
	            let vc = segue.destinationViewController as! GalleryViewController
	            
	            // 匹配选中的 UIPickerView 条目
	            // 将选中的条目信息传递给页面 GalleryViewController
	            switch numPicker.selectedRowInComponent(0) {
	            case 0:
	                vc.imgName = "1"
	            case 1:
	                vc.imgName = "2"
	            case 2:
	                vc.imgName = "3"
	            case 3:
	                vc.imgName = "4"
	            case 4:
	                vc.imgName = "5"
	                
	            default:
	                vc.imgName = nil
	                
	            }
	        }
	    }
	    
6. **在 GalleryViewController 的 viewDidLoad() 中接收信息并展示图片**
    
	    override func viewDidLoad() {
	        super.viewDidLoad()
	        // Do any additional setup after loading the view, typically from a nib.
	        
	        if let name = imgName {
	            
	            numImg.image = UIImage(named: imgName)
	            
	            switch name {
	            case "1":
	                navigationItem.title = "num1"
	            case "2":
	                navigationItem.title = "num2"
	            case "3":
	                navigationItem.title = "num3"
	            case "4":
	                navigationItem.title = "num4"
	            case "6":
	                navigationItem.title = "num6"
	            default:
	                break
	            }
	        }
	    }
    
    
# 2. 返回

1. **在跳转前页面中必须添加以下方法**

	    // 该方法的好处：可以读取所在页面中的属性
	    @IBAction func close(segue: UIStoryboardSegue) {
	        print("close")
	    }
	    
2. **Storyboard 中拖动按钮到 Exit 即可**   

# 3. 分享 

- **IOS 中带了 Twitter、 Facebook、 新浪微博、 腾讯微博：`import UIKit`**

	    @IBAction func btShare(sender: AnyObject) {
	    
	        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
	    
	    	// 文字描述
	        controller.setInitialText("play with me")
	        // 图片描述
	        controller.addImage(numImg.image)
	        
	        self.presentViewController(controller, animated: true, completion: nil)
	    }
	    
# 4. Navigation Controller

1. **Editor -> Embed In -> Nevigation Controller**

2. **设置标题 `navigationItem.title`**


# 5. Tab Bar Controller

- **Editor -> Embed In -> Tab Bar Controller**

- **可设置单个 TAB 的图标和标题**

# 6. Sketch

1. **ALT + A 拖出 Artboard**

2. **O、 Shift 画圆**

3. **在圆中添加图标**

4. **Command + G 成组**

	>- **图标大全：<http://fontawesome.io>**
	>
	>- **Sketch：<http://sketchcn.com>**


# 7. Auto Layout

- **Storyboard 中选中 View 勾选 `Add Missing Constraints`**

- **在右面板中做调整(间距、等)**


# PS：三种制作UI的方式

- **Nib - 二进制(Xib - xml)**

- **纯代码编写**

- **Storyboard**
