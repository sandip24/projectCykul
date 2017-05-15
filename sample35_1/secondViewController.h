//
//  secondViewController.h
//  sample35_1
//
//  Created by The Atlanta Foundation on 11/05/17.
//  Copyright © 2017 cykul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *greenview;
//@property(nonatomic) BOOL *isSomethingEnabled;
- (IBAction)back:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *web;

@property (nonatomic) int temp2;
@end
