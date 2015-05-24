//
//  ViewController.m
//  Base64_AES_MD5
//
//  Created by ectrip on 14-1-15.
//  Copyright (c) 2014年 ectrip. All rights reserved.
//

#import "ViewController.h"
#import "SecurityUtil.h"
#import "GTMBase64.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *test = @"TEST";
    
    NSString *base64result = [SecurityUtil encodeBase64String:test];
    NSLog(@"%@", base64result);
    NSString *base64return = [SecurityUtil decodeBase64String:base64result];
    NSLog(@"%@", base64return);
    
    
    
    
    
    
    
    NSData *aesdataresult = [SecurityUtil encryptAESData:test];
    NSLog(@"%@", aesdataresult);
    //NSString *ss=[SecurityUtil encodeBase64String:aesdataresult];
    NSLog(@"%@",[SecurityUtil encodeBase64Data:aesdataresult]);
    NSString *ss=@"uK5+EG0KIG0rbNeeIAmQgeHjBM12JuW+1Pkcey51KF6/0Xzykoi4EWMX/CYPGeSykFwfJOqYy4v/7P+vmdRw+nwvDP8ZFFsQpmEeQSBbuf0W0WkpVMq0p18Qa0d+5yTM";
    NSData *dd=[ss dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data2=[GTMBase64 decodeData:dd];
    NSString *aesresult=[SecurityUtil decryptAESData:data2];
   // NSData *str=[eoj dataUsingEncoding:NSUTF8StringEncoding];
   
   // NSString *aestobase64=[SecurityUtil decodeBase64String:eoj];
    NSLog(@"aes转换成base64  %@",aesresult);
   //  NSData *data=[str dataUsingEncoding:NSUTF8StringEncoding ];
    //NSString *nobase64=[SecurityUtil encodeBase64Data:aesdataresult];
   // NSString *yesbase64=[SecurityUtil decodeBase64String:nobase64];
   // NSLog(@"又转换成aes%@",yesbase64);
   // NSString *aes=[SecurityUtil decryptAESData:data];
    //NSLog(@"转换为原来数据%@",aes);
   // NSString *aesdatareturn = [SecurityUtil decryptAESData:str];
   // NSLog(@"%@", aesdatareturn);
    
    
    
    
    
    
    
    
    
    
    NSString *md5result = [SecurityUtil encryptMD5String:test];
    //NSLog(@"%@", md5result);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
