## FXToast

**一个使用单例封装的通知弹窗, 自带上移动画效果**

## 集成方法
**将FXToast拖入工程即可,在需要使用的地方 `#import "FXToast"`**

## 使用方法
- 1 **可以直接使用类名调用类方法显示**

`
	[FXToast showAlert:@"something"];`

- 2 **可以创建单例对象,使用对象方法显示**

```
	FXToast * toast = [FXToast sharedToast];
    [toast showAlert:@"someThing"];
```
    	    
    	    
## 效果展示
<img src="http://p1.bpimg.com/1949/7ff849d0567409f5.png" width=500>

**欢迎使用和交流,  e2shao1993@163.com**

