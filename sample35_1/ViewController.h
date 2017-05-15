//
//  ViewController.h
//  sample35_1
//
//  Created by The Atlanta Foundation on 03/05/17.
//  Copyright © 2017 cykul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *web;
- (IBAction)button:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *back;
@property (weak, nonatomic) IBOutlet UIToolbar *tool;
- (IBAction)back:(id)sender;


@end

