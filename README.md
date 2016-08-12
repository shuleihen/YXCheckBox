# YXCheckBox

1、设置好normal和selected 状态下的图片

2、obj 调用
```objc
__weak ViewController *wself = self;
self.passwordCheckBox.checkedBoxBlock = ^(BOOL checked){
    wself.passwordText.secureTextEntry = !checked;
    [wself.passwordText becomeFirstResponder];
};
```
