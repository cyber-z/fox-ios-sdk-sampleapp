//
//  ViewController.m
//  FoxSample
//
//  Created by 呉 維 on 2015/05/20.
//  Copyright (c) 2015年 FOX. All rights reserved.
//

#import "ViewController.h"
#import "Ltv.h"
#import "AnalyticsManager.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnTutorial;
@property (weak, nonatomic) IBOutlet UIButton *btnPurchase;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTutorial:(id)sender {
    NSLog(@"on tutorial click");
    @autoreleasepool {
        int cvPoint = 0;// LTV ID
        
        AppAdForceLtv* ltv = [AppAdForceLtv new];
        [ltv sendLtv:cvPoint];
    }
}

- (IBAction)onPurchase:(id)sender {
    NSLog(@"on purchase click");
    [ForceAnalyticsManager sendEvent:@"purchase" action:nil label:nil orderID:nil sku:nil itemName:@"sword" price:500 quantity:1 currency:@"JPY"];
}
@end
