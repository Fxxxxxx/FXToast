## FXToast

**一个使用单例封装的通知弹窗, 自带上移动画效果**
这只是我当初为了尝试上架CocoaPods所做的一个小工具，实用性还不错，参考安卓的Toast效果，加了上移出现的动画，使用单例模式，不会有安卓Toast叠加出现的弊端，内存占有也很小，非常简单的一个小玩意。

## 集成方法
**将FXToast拖入工程即可,在需要使用的地方 `#import "FXToast.h"`**

**Cocoapods  pod 'FXToast'**

## 使用方法
- 1 **可以直接使用类名调用类方法显示**

	`[FXToast showAlert:@"something"];`

- 2 **可以创建单例对象,使用对象方法显示**

```
FXToast * toast = [FXToast sharedToast];        
[toast showAlert:@"someThing"];
    
```
    	    
    	    
## 效果展示
![12月-01-2017 19-40-49.gif](http://upload-images.jianshu.io/upload_images/3569202-c8c3f9834b249f97.gif?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



**欢迎使用和交流,  e2shao1993@163.com**
