//
//  SZCoreDocViewController.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/21.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZCoreDocViewController.h"

@interface SZCoreDocViewController ()
@property(nonatomic, strong)UIWebView *webView;
@end

@implementation SZCoreDocViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSFileManager *fileManager = [[NSFileManager alloc]init];
    NSString *pathDocuments = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString *createPath = [NSString stringWithFormat:@"%@/bookroom",pathDocuments];
    if (![[NSFileManager defaultManager]fileExistsAtPath:createPath]) {
        
        [fileManager createDirectoryAtPath:createPath withIntermediateDirectories:YES attributes:nil error:nil];
        
    }else{
        NSLog(@"有这个文件了");
    }
    NSString *path = [createPath stringByAppendingPathComponent:@"holyBible.txt"];                                         NSString *text = @"abcdefg";
    //将字符串转成NSData类型
    NSData *data = [text dataUsingEncoding: NSUTF8StringEncoding];
//    BOOL success = [fileManager createFileAtPath:path contents:data attributes:nil];
    //    LOG(@"%@",path);
    NSLog(@"%@",path);
    
    
    self.webView = [[UIWebView alloc]init];
    [self.webView setFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)];
    [self.view addSubview:self.webView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"holyBible" ofType:@"txt"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:fileURL];
    
    [self.webView loadRequest:request];
}
- (void)writeToDocuments{
    NSFileManager *fileManager = [[NSFileManager alloc]init];
    NSString *pathDocuments = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString *createPath = [NSString stringWithFormat:@"%@/bookroom",pathDocuments];
    if (![[NSFileManager defaultManager]fileExistsAtPath:createPath]) {
        
        [fileManager createDirectoryAtPath:createPath withIntermediateDirectories:YES attributes:nil error:nil];
        
    }else{
        NSLog(@"有这个文件了");
    }
    NSString *path = [createPath stringByAppendingPathComponent:@"holyBible.doc"];                                         NSString *text = @"abcdefg";
    //将字符串转成NSData类型
    NSData *data = [text dataUsingEncoding: NSUTF8StringEncoding];
    BOOL success = [fileManager createFileAtPath:path contents:data attributes:nil];
    //    LOG(@"%@",path);
    NSLog(@"%@",path);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
