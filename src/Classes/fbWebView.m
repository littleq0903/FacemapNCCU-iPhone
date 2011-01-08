//
//  fbWebView.m
//  facemap
//
//  Created by 李嘉玲 on 2011/1/3.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "fbWebView.h"


@implementation fbWebView
@synthesize myWebView;

- (id)initWithName:(NSString *)name url:(NSString *)fburl
{
    if (self = [self initWithNibName:@"fbWebView" bundle:nil]) {
        // Custom initialization
        self.title = name;
        //self.text = someText;
    }
	
	
	CGRect bounds = [ [ UIScreen mainScreen ] applicationFrame ];
	//scrollable webview
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:bounds];
	//Our webView has now been initialized with the bounds of our scrollView.  
	//The next thing we do is load our content from our webpage:
	myWebView = [ [ UIWebView alloc ] initWithFrame:[scrollView bounds]];
	
	 //建立一個NSURLRequest物件
	NSURL *url = [NSURL URLWithString:fburl];
	NSURLRequest *request = [ NSURLRequest requestWithURL:url ];
	//讓 UIWebView 連上NSURLRequest 物件所設定好的網址
	[ myWebView loadRequest: request ];
	
	//we set it to the size of our webview that we’ve loaded
	scrollView.contentSize = [myWebView bounds].size;
	//add our webview to our scrollview:
	[scrollView addSubview:myWebView];
	
	//self.view = scrollView;
	[self.view addSubview:scrollView];
	
	
	//設定網址字串
    //NSString *urlAddress = @"http://ithelp.ithome.com.tw/question/10056941";
    //NSString *urlAddress = fburl;
    
    //建立一個NSURL物件
    //NSURL *url = [NSURL URLWithString:urlAddress];
    
   
    //建立一個UIWebView 物件
    //myWebView = [[UIWebView alloc] initWithFrame:[self.view frame]];
    
    //讓 UIWebView 連上NSURLRequest 物件所設定好的網址
    //[myWebView loadRequest:requestObj];
    
    //將 UIWebVeiw 物件加入到現有的 View 上
    //[self.view addSubview:myWebView];
    
    //釋放 UIWebView佔用的記憶體
    //[myWebView release];
	
    return self;
}


// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	//[myWebView release];
    [super dealloc];
}


@end
