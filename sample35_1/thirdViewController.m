//
//  thirdViewController.m
//  sample35_1
//
//  Created by The Atlanta Foundation on 11/05/17.
//  Copyright © 2017 cykul. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController
@synthesize temp3,paymentID;
- (void)viewDidLoad {
    [super viewDidLoad];
    _label.text = [NSString stringWithFormat:@"%@",paymentID];
    NSLog(@"This is redirected screen");
    //NSLog(@"%d temp3==>",temp3);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
