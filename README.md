###XLJNewFeature新特性

####★★★"iOS App新特性"★★★

####支持pod导入

pod 'XLJNewFeature', '~> 1.0.0'

如果发现pod search XLJNewFeature 搜索出来的不是最新版本，需要在终端执行cd转换文件路径命令退回到desktop，然后执行pod setup命令更新本地spec缓存（可能需要几分钟），然后再搜索就可以了。

####更新记录:

2016-10-14 — 第一次更新，进行功能添加。



####根据需要的信息进行设置

#####API接口：

>  /**
>
> *初始化
> *
>
> *@param array       传入一个数组
>
> *@param buttonSize  按钮的宽度和高度
>
> *@param buttonTitle 按钮显示的文字
>
> *@param imageName   按钮的图片
>
> *@param titleColor  按钮文字的颜色
>
> *@param startHeight 按钮的Y的比率
>
> *@param controller  按钮点击跳转的界面
> *
>
> *@return 
> */
>
> -(instancetype)initWithNSArray:(NSMutableArray *)array withButtonSize:(CGSize)buttonSize withButtonTitle:(NSString *)buttonTitle withButtonImage:(NSString *)imageName withButtonTitleColor:(UIColor *)titleColor withButtonHeight:(CGFloat)startHeight withViewController:(UIViewController *)controller;
>
> 

####初始化方法

>self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
>
>
>   ViewController *homeVC = [[ViewController alloc] init];
>   
>   XLJNewFetureController *newVC = [[XLJNewFetureController alloc] initWithNSArray:self.mArray withButtonSize:CGSizeMake(120, 80) withButtonTitle:@"开启旅行" withButtonImage:@"functionGuideBt1" withButtonTitleColor:[UIColor orangeColor] withButtonHeight:0.87 withViewController:homeVC];
>   
>   self.window.rootViewController = newVC;
>
>
>   [self.window makeKeyAndVisible];



####功能实现的原理

######该功能使用`UiviewCollectionView`来实现的，实现此功能有很多方法，比如直接使用`uiscrollview`实现。

######本功能很简单，使用方便，可以快速的实现产品的需求。也不是很完善，有不对的地方，请大家指出，以便即时修正。

★★★★★★★★★★

######如果觉得可以，请star这是对我一种鼓励，让我知道我应该更加努力把她做的更加完善。

####PS:![Alt Text](https://github.com/marlonxlj/newFeaturesx/blob/7436eb1c6dc20fb0f08bee265908bdc6e94f6ff4/2016-10-14%2014_20_14.gif)

