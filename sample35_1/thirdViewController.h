//
//  thirdViewController.h
//  sample35_1
//
//  Created by The Atlanta Foundation on 11/05/17.
//  Copyright © 2017 cykul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewController : UIViewController
@property(nonatomic) BOOL *isSomethingEnabled;
@property (nonatomic) int temp3;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic,strong) NSArray *paymentID;
@end
