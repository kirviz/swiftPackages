//
//  ViewController.m
//  objcClient
//
//  Created by Darius Jankauskas on 01/07/2020.
//

#import "ViewController.h"
#import <objcFramework/objcFramework.h>
#import <swiftFramework/swiftFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FramyO *o = [[FramyO alloc] initWithName:@"oOOo"];
    NSLog(@"%@", o.name);
}


@end
