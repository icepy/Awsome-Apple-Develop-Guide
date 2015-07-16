<h1 align="center">iOS有用的面试题大集合</h1>

若有疑问或者解答不对，可以给我发送邮件：xiangwenwe@foxmail.com，及时修改。

欢迎大家将面试时的问题共享出来，您可以：

* 使用 [Issues](https://github.com/lcepy/iOS-usefulinformation-zh_CN/issues) 以及 Pull Request

面试题从何处得来

* [招聘一个靠谱的 iOS](http://blog.sunnyxx.com/2015/07/04/ios-interview/)
* [知乎－如何面试 iOS 工程师？](http://www.zhihu.com/question/19604641)


##【目录】
----

[0 阅读面试题之前](#0)

........[0.1 什么是iOS开发](#0.1)

........[0.2 拼写正确的重要性](#0.2)

........[0.3 Swift和Objective-C的比较](#0.3)

........[0.4 了解Watch OS](#0.4)

[1.0 面试](#1)

........[1.1 iOS面试](#1.1)

........[1.2 Hybrid 混合开发](#1.2)


##【正文】
----

开始之前，我假设你已经有所了解

<h2 name="0">0 阅读面试题之前</h2>

在正式开始之前，我期望你能对iOS/Mac OS X平台开发有所了解，在iOS开发中已经很少需要自己写复杂的算法了，一般情况下很少会在面试中出现算法的考核，如果你了解一些基础的算法，还是有帮助的。

Now！！请使用ARC

<h3 name="0.1">0.1 什么是iOS开发</h3>

iOS是iPhone iPad等手持设备的操作系统，所谓的iOS开发就是开发运行在iOS系统上的应用或者游戏，比如支付宝，微信，微博等，当然这也包括了iPad版的应用，iOS开发可以归纳到**移动开发**领域。

**有时候面试官是那种'脑残粉'，了解一下Apple的发展历史，可能比较聊的开。**

[苹果Mac计算机31年发展历程回顾](http://digi.tech.qq.com/a/20150127/021898.htm)

[苹果公司](http://baike.baidu.com/link?url=68F4Bl4llkNvdFJ1Md0fkZDDudN-NS46JeZoLrgPeqEbZmm8oBKG92Ocyd983yNQU6FVuDTFZOnjjPjfUHnuoePdfh6zJJ973pXFKYcbIKp5bCnQy_WvUVNJ6P84s8HE1xAlRaGdLVuoCb2p_8uaMa)

[苹果公司在知乎上的话题](http://www.zhihu.com/topic/19551762)

[乔布斯个人传记](http://www.amazon.cn/%E5%8F%B2%E8%92%82%E5%A4%AB%C2%B7%E4%B9%94%E5%B8%83%E6%96%AF%E4%BC%A0-%E6%B2%83%E5%B0%94%E7%89%B9%C2%B7%E8%89%BE%E8%90%A8%E5%85%8B%E6%A3%AE/dp/B00IM4IFL2/ref=sr_1_1?ie=UTF8&qid=1436592631&sr=8-1&keywords=%E4%B9%94%E5%B8%83%E6%96%AF)

<h3 name="0.2">0.2 拼写正确的重要性</h3>

有些面试官可能更注重细节，所以，拼写的单词一定要对，比如iOS，Xcode，iPhone，Objective-C，JSON等，良好的拼写习惯，会让面试官觉得你细心靠谱。

<h3 name="0.3">0.3 Swift和Objective-C的比较</h3>

仁者见仁智者见智，从个人的使用角度上来看，Swift在某些情况上比Objective-C更加的严谨了，入门非常简单，但是想开发应用，还是需要学习cocoa框架，这玩意路子还是Objective-C的，所以有基础可能更好的理解Swift在iOS/Mac OS X 中的开发和应用。

[http://www.zhihu.com/question/24002984](http://www.zhihu.com/question/24002984)

<h3 name="0.4">0.4 了解Watch OS</h3>

Watch OS是苹果公司推出的应用在手表上的一个操作系统，Watch OS 1.0需要跟iPhone相结合才能工作。

[Apple Watch](https://stratechery.com/2014/apple-watch-asking-saying/)

[Watch OS 2.0 开发概述](http://mp.weixin.qq.com/s?__biz=MjM5NTIyNTUyMQ==&mid=208847424&idx=1&sn=fac57c5da8136b07fe9cdf53d1ec9f4c#rd)

----

<h2 name="1.0">1.0 面试</h2>

<h3 name="1.1">1.1 iOS面试</h3>

<h5>property 后面可以有哪些修饰符</h5>

读写修饰符 readwrite | readonly

	readwrite Xcode会帮助我们创建setter，getter方法，readonly Xcode只会帮助我们创建getter方法，不会创建setter方法。

setter相关的修饰符 assign | retain | copy

	setter相关的修饰符表明了setter方法该如何实现，assign用于基本数据类型NSInteger，CGFloat，C数据类型int，float，id类型等，这个符号不会涉及内存管理，但是如果是对象类使用了它，可能会导致内存泄漏或者EXC_BAD_ACCESS错误。

	retain用于对象类的内存管理，如果基本数据类型使用它，Xcode会直接报错。当对象类使用此修饰符时，setter方法的实现是先release一次，然后再对新的对象做一次retain操作。

	copy主要用于NSString，用于内容复制。

原子性修饰符 atomic | nonatomic

	atomic 表示线程安全

	nonatomic 表示非线程安全，使用此修饰符会提高性能

getter，setter修饰符

	这两个修饰符用于设置生成的getter，setter的方法名

strong，weak修饰符（ARC）

	strong表示这个对象的拥有者
	
	weak指针变量仍然可以指向一个对象，但不是这个对象的拥有者
	
	在ARC中内存管理都只需要使用这两个修饰符，而且strong是默认全局的，只要你写了Objective-C的对象，不自己添加weak的话，默认就是strong。一个对象可以有多个拥有者，strong就是用来表示对这个对象的拥有。比如在往NSMutableArray中添加Objective-C对象，当你从数组中删除时，这个对象并不会释放。需要你手动设置为nil，或者在控制器的生命周期内，由系统来释放。weak修饰的指针变量也可以指向对象，但不是这个对象的实际拥有者，也就是说weak修饰的指针变量如果想要释放，需要strong修饰的指针变量设置为nil，weak修饰的指针变量也会是一个nil，它指向的对象已经没有了，还需要设置weak修饰的指针变量为nil。
	
nonnull nullable null_resettable

	Xcode 6.3推出的nullability annotations，主要是为了更好的Swift与Objective-C混编，在Swift中有可选型的概念!?，但是Objective-C中木有这玩意，于是Xcode 6.3中才有了这个，从字面可以看出nonnull 表示对象不应该为空，如果是这个修饰符对应的就是Swift中已经解包的对象或者!，nullable表示可以为nil或者NULL，对应是Swift中的可选?null_resettable则是表达属性的空属性，该属性setter访问器允许将其设置为nil（设置该属性为默认值），但是它的getter访问器不会提供一个nil值（因为它提供了默认值），有一个这样的属性如UIView’s tintColor，如果没有tint颜色指定时它会提供一个默认的tint颜色值，对应的Swift使用是var tintColor:UIColor!


<h5>什么情况使用 weak 关键字，相比 assign 有什么不同</h5>

一般情况下使用weak是避免循环引用，因为它不是对象的拥有者。而assign则是用于基本数据类型，或者C类型，而且assign是直接赋值，可能会导致一个问题。比如我想a和b共用一块内存，a是用assign修饰的，a = b，现在a使用的目的已经完成，我想释放这个内存，但是a并不知道b到底用没用完，如果此时a释放内存，而b还在使用，那么会导致应用程序crash，使用weak就能避免这样的问题。

<h5>怎么用 copy 关键字</h5>

* copy拷贝的是内容,retain是拷贝的指针
* 以string为例,如果string的属性为copy的话,那么传入参数为NSString的话,即为不可变string,retain,copy效果一样.
* 如果传入参数是mutable的话,那么copy拷贝内容,源随意变化不影响该属性的值.retain拷贝指针,源变化则属性值着变化,因为属性和源指向如何使用呢,通常在需要拷贝内容,但是副本和源不要互相影响的情况下使用.* 同一内存地址.
* 例如array/dictionary中,可能会需要一个副本来做一些操作(筛选,排序等),但是并不希望影响原始值,则可以使用copy

<h5>@property (copy) NSMutableArray *array; 这样写有什么问题吗</h5>

因为用了copy, 内部会深拷贝一次, 指针实际指向的是NSArray, 所以如果调用removeObject和addObject方法的话, 会unRecognized selector 

<h5>如何让自己的类用 copy 修饰符？如何重写带 copy 关键字的 setter？</h5>

当一个对象发生改变时不影响另外一个对象，这里就需要使用copy关键字了，实现NSCopying协议，重写- (id)copyWithZone:(NSZone *)zone方法。

	- (void)setName:(NSString *)name
	{
		if(_name != name) {
			_name = [name copy];
		}
	}

<h5>@protocol 和 category 中如何使用 @property</h5>

@protocol可以通过关键字:@synthesize或者在继承的类里面重新定义一次该属性(extension里面定义是不行的)

category通过关联:objc_setAssociatedObject/objc_getAssociatedObject

<h5>@property 的本质是什么？ivar、getter、setter 是如何生成并添加到这个类中的</h5>

@property本质是定义一个objc_property结构体

**如何生成目前不清楚**
	
<h5>weak属性需要在dealloc中置nil么</h5>

不需要，因为weak会自动设置nil

<h5>@synthesize和@dynamic分别有什么作用</h5>

关于@synthesize（现在已经不需要在写这个属性了，它是用来生成getter和setter方法）

@dynamic 就是要告诉编译器getter和setter方法会在程序运行或者用到动态绑定的方式，以便让编译器通过编译，这个主要要在NSManagerObject上。

<h5>ARC下，不显式指定任何属性关键字时，默认的关键字都有哪些</h5>

在默认情况下，所有的实例变量和局部变量都是strong类型的。

<h5>用@property声明的NSString（或NSArray，NSDictionary）经常使用copy关键字，为什么？如果改用strong关键字，可能造成什么问题</h5>

因为不想改变了其中的值后把原来的值也跟着改变了，用了strong后会出现这样的状况。

	
<h5>什么是ARC</h5>

请阅读，然后随便谈谈你的理解即可。

ARC是为了解决下面几个问题

* 当我们要释放一个堆内存时，首先要确定指向这个堆空间的指针都被release了。（避免提前释放）
* 释放指针指向的堆空间，首先要确定哪些指针指向同一个堆，这些指针只能释放一次。（MRC下即谁创建，谁释放，避免重复释放）
* 模块化操作时，对象可能被多个模块创建和使用，不能确定最后由谁去释放。
* 多线程操作时，不确定哪个线程最后使用完毕

[手把手教你ARC——iOS/Mac开发ARC入门和使用](http://onevcat.com/2012/06/arc-hand-by-hand/)

[理解 Objective-C 的 ARC](http://www.oschina.net/translate/objc-automatic-reference-counting-in-xcode-explained)

<h5>请解释以下keywords的区别： assign vs weak, block vs weak</h5>

assign适用于基本数据类型，weak是适用于NSObject对象，并且是一个弱引用。

assign其实也可以用来修饰对象，那么我们为什么不用它呢？因为被assign修饰的对象在释放之后，指针的地址还是存在的，也就是说指针并没有被置为nil。如果在后续的内存分配中，刚好分到了这块地址，程序就会崩溃掉。

weak修饰的对象在释放之后，指针地址会被置为nil。所以现在一般弱引用就是用weak。

block是用来修饰一个变量，这个变量就可以在block中被修改，使用block修饰的变量在block代码快中会被retain（ARC下，MRC下不会retain） 

weak：使用weak修饰的变量不会在block代码块中被retain同时，在ARC下，要避免block出现循环引用 weak typedof(self)weakSelf = self

<h5>__block在arc和非arc下含义一样吗</h5>

是不一样的，ARC会retain，非ARC不会。

<h5>描述一个你遇到过的retain cycle例子</h5>

在viewController中避免循环引用

	[ downloadData:^(id responseData){
        _data = responseData;
    }];

解决办法

	__weak ViewController *weakSelf = self;
	[ downloadData:^(id responseData){
        weakSelf.data = responseData;
    }];

<h5>+(void)load; +(void)initialize；有什么用处</h5>

在Objective-C中，runtime会自动调用每个类的两个方法。+load会在类初始加载时调用，+initialize会在第一次调用类的类方法或实例方法之前被调用。这两个方法是可选的，且只有在实现了它们时才会被调用。
共同点：两个方法都只会被调用一次。

<h5>UIView和CALayer有什么关系</h5>

* UIView是iOS界面元素的基础，所有的界面元素都继承于它。它本身是由CoreAnimation来实现的，它真正绘图的部分是由一个CALayer的类来管理的，UIView本身更像是一个CALayer的管理器。
* UIView都存在一个layer属性，可以访问到CALayer的实例。
* UIView的CALayer类也存在一个view树结构，可以像UIView一样进行添加
* UIView的layer树在系统内部，由系统来维护，它存在着三棵树，分别是逻辑树，动画树，显示树

<h5>如何高性能的给UIImageView加个圆角</h5>

* 使用贝塞尔曲线来切割图片
* 使用Quartz2D直接绘制图片

<h5>使用drawRect有什么影响</h5>

drawRect方法依赖Core Graphics框架来进行自定义的绘制，但这种方法主要的缺点就是它处理touch事件的方式：每次按钮被点击后，都会用setNeddsDisplay进行强制重绘；而且不止一次，每次单点事件触发两次执行。这样的话从性能的角度来说，对CPU和内存来说都是欠佳的。

<h5>SDWebImage里面给UIImageView加载图片的逻辑是什么样的</h5>

详情看[最新版SDWebImage的使用](http://www.cnblogs.com/6duxz/p/4159572.html)

<h5>麻烦你设计个简单的图片内存缓存器</h5>

图片的内存缓存，可以考虑将图片数据保存到一个数据模型中，所以在程序运行时这个模型都存在内存中，一定要具备移除策略，即释放数据模型。

<h5>讲讲你用Instrument优化动画性能的经历</h5>

[怎么使用instrument](http://www.hrchen.com/2013/05/performance-with-instruments/)

<h5>loadView是干嘛用的</h5>

当你访问一个ViewController的view属性时，如果此时view的值是nil，那么，ViewController就会自动调用loadView这个方法。这个方法就会加载或者创建一个view对象，赋值给view属性。

loadView默认做的事情是：如果此ViewController存在一个对应的nib文件，那么就加载这个nib。否则，就创建一个UIView对象。

如果你用Interface Builder来创建界面，那么不应该重载这个方法。

如果你想自己创建view对象，那么可以重载这个方法。此时你需要自己给view属性赋值。你自定义的方法不应该调用super。如果你需要对view做一些其他的定制操作，在viewDidLoad里面去做。

[iOS 的loadView 及使用loadView中初始化View注意的问题](http://www.cnblogs.com/dyllove98/archive/2013/06/06/3123005.html)

<h5>用过CoreData或者SQLite吗？读写是分线程的吗？遇到过死锁没？咋解决的</h5>

参考[CoreData与SQLite的线程安全](http://blog.csdn.net/hanangellove/article/details/44966769)

<h5>GCD里面有哪几种Queue？你自己建立过串行queue吗？背后的线程模型是什么样的</h5>

* 主队列 dispatch_main_queue(); 串行 ，更新UI
* 全局队列 dispatch_global_queue(); 并行，四个优先级：background，low，default，high
* 自定义队列 dispatch_queue_t queue ; 可以自定义是并行：DISPATCH_QUEUE_CONCURRENT或者串行DISPATCH_QUEUE_SERIAL

<h5>为什么其他语言里叫函数调用， Objective-C里则是给对象发消息（或者谈下对runtime的理解）</h5>

网上关于runtime的资料非常多，其实这方面在平时的开发中使用非常非常之少，底层的黑魔法。

[Objective-C特性：Runtime](http://www.jianshu.com/p/25a319aee33d)

[Objective-C Runtime](http://tech.glowing.com/cn/objective-c-runtime/)

<h5>什么是method swizzling</h5>

在Objective-C中调用一个方法，其实是向一个对象发送消息，查找消息的唯一依据是selector的名字。利用Objective-C的动态特性，可以实现在运行时偷换selector对应的方法实现，达到给方法挂钩的目的。

[详细的案例](http://blog.csdn.net/yiyaaixuexi/article/details/9374411)

<h5>runtime 如何实现 weak 属性</h5>

	OBJC_ASSOCIATION_ASSIGN
	OBJC_ASSOCIATION_RETAIN_NONATOMIC
	OBJC_ASSOCIATION_COPY_NONATOMIC
	OBJC_ASSOCIATION_RETAIN
	OBJC_ASSOCIATION_COPY
	
	objc_setAssociatedObject(self, &myKey, anObject, OBJC_ASSOCIATION_RETAIN);

可以自定义weak来实现内存管理，Apple已经为我们准备了常量。

参考

[Associated Objects](http://nshipster.cn/associated-objects/)

[Objective-C Runtime 运行时之二：成员变量与属性](http://southpeak.github.io/blog/2014/10/30/objective-c-runtime-yun-xing-shi-zhi-er-:cheng-yuan-bian-liang-yu-shu-xing/)

<h5>objc中向一个nil对象发送消息将会发生什么</h5>

objc的特性是允许对一个 nil 对象发送消息不会 Crash，因为会被忽略掉。

<h5>什么时候会报unrecognized selector的异常</h5>

调用一个不存在的方法

<h5>objc中向一个对象发送消息[obj foo]和objc_msgSend()函数之间有什么关系</h5>

	[obj foo];
 
	//编译时会变成
 
	objc_msgSend(obj,@selector(foo));
	
	[obj foo:parameter];
	
	//编译时会变成
	
	objc_msgSend(obj,@selector(foo:),parameter);
	
<h5>一个objc对象如何进行内存布局</h5>

可参考[Objective-C内存布局](http://www.cnblogs.com/csutanyu/archive/2011/12/12/objective-c_memory_layout.html)

<h5>一个objc对象的isa的指针指向什么？有什么作用？</h5>

isa是一个Class 类型的指针. 每个实例对象有个isa的指针,他指向对象的类，而Class里也有个isa的指针, 指向meteClass(元类)。元类保存了类方法的列表。当类方法被调用时，先会从本身查找类方法的实现，如果没有，元类会向他父类查找该方法。同时注意的是：元类（meteClass）也是类，它也是对象。元类也有isa指针,它的isa指针最终指向的是一个根元类(root meteClass).根元类的isa指针指向本身，这样形成了一个封闭的内循环。

<h5>下面的代码输出什么</h5>

	@implementation Son : Father
	- (id)init
	{
    	self = [super init];
    	if (self) {
        	NSLog(@"%@", NSStringFromClass([self class]));
        	NSLog(@"%@", NSStringFromClass([super class]));
    	}
    	return self;
	}
	@end
	
输出Son

<h5>runtime如何通过selector找到对应的IMP地址</h5>

	id (*IMP)(id, SEL, ...)

这个函数使用当前CPU架构实现的标准的C调用约定。第一个参数是指向self的指针(如果是实例方法，则是类实例的内存地址；如果是类方法，则是指向元类的指针)，第二个参数是方法选择器(selector)，接下来是方法的实际参数列表。

前面介绍过的SEL就是为了查找方法的最终实现IMP的。由于每个方法对应唯一的SEL，因此我们可以通过SEL方便快速准确地获得它所对应的IMP，查找过程将在下面讨论。取得IMP后，我们就获得了执行这个方法代码的入口点，此时，我们就可以像调用普通的C语言函数一样来使用这个函数指针了。

通过取得IMP，我们可以跳过Runtime的消息传递机制，直接执行IMP指向的函数实现，这样省去了Runtime消息传递过程中所做的一系列查找操作，会比直接向对象发送消息高效一些。




