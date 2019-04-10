

经测试 只要自定义了返回按钮就不会出现 设置setTitleTextAttributes 不成功的情况， 应该是苹果内部进行了一些操作

//============================
一些测试数据


push 进入testVc2

第一页  设置颜色之后的打印  after

{
    NSColor = "UIExtendedGrayColorSpace 0 1";
    NSFont = "<UICTFont: 0x129e0d1a0> font-family: \".SFUIText\"; font-weight: normal; font-style: normal; font-size: 17.00pt";
}


push 开始

第二页的属性 after
{
    NSColor = "UIExtendedSRGBColorSpace 0.6 0.4 0.2 1";
    NSFont = "<UICTFont: 0x129d2f3e0> font-family: \".SFUIText\"; font-weight: normal; font-style: normal; font-size: 10.00pt";
}


第二页进入 设置为第一页色值 —— 应该要去掉的
{
    NSColor = "UIExtendedGrayColorSpace 0 1";
    NSFont = "<UICTFont: 0x129e0d1a0> font-family: \".SFUIText\"; font-weight: normal; font-style: normal; font-size: 17.00pt";
}


fd_setupViewControllerBasedNavigationBarAppearanceIfNeeded  在设置一次颜色
{
    NSColor = "UIExtendedSRGBColorSpace 0.6 0.4 0.2 1";
    NSFont = "<UICTFont: 0x129d2f3e0> font-family: \".SFUIText\"; font-weight: normal; font-style: normal; font-size: 10.00pt";
}




=====================================



第二页返回第一页设置的属性打印  —— 没问题
{
    NSColor = "UIExtendedGrayColorSpace 0 1";
    NSFont = "<UICTFont: 0x129e0d1a0> font-family: \".SFUIText\"; font-weight: normal; font-style: normal; font-size: 17.00pt";
}


fd_setupViewControllerBasedNavigationBarAppearanceIfNeeded  在设置一次颜色

{
    NSColor = "UIExtendedGrayColorSpace 0 1";
    NSFont = "<UICTFont: 0x129e0d1a0> font-family: \".SFUIText\"; font-weight: normal; font-style: normal; font-size: 17.00pt";
}






导航的内存地址
<UINavigationController: 0x12a017600>


<UINavigationController: 0x12a017600>
