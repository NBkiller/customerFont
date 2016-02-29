# customerFont
更换系统自带的字体，自定义字体及动态改变

注：我们项目是在后面才有更换字体的需求，所以都是用到的systemFontOfSize:方法，而不是是fontWithName: size:方法，
所以要全部跟换的话，就需要所有都换，工作量非常大啊，所以想到了运行时。

	+(void)load {
	Method originalMethod = class_getClassMethod([UIFont class], @selector(systemFontOfSize:)); 
	Method swizzledMethod = class_getClassMethod([UIFont class], @selector(fontWithNameAndSize:)); 
	method_exchangeImplementations(originalMethod, swizzledMethod); 
	}
	
	+(UIFont *)fontWithNameAndSize:(CGFloat)fontSize { 
	NSLog(@"fontWithNameAndSize"); 
	return [UIFont fontWithName:@"STHeitiTC-Light" size:fontSize];
}
