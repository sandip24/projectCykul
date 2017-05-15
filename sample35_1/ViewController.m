//
//  ViewController.m
//  sample35_1
//
//  Created by The Atlanta Foundation on 03/05/17.
//  Copyright © 2017 cykul. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
#import "child.h"
@interface ViewController (){
    int i,a,b,temp,addition;
    
}

@end

@implementation ViewController


- (void)viewDidLoad {
    
 

    [super viewDidLoad];
    a=34;
    b=45;
    temp = a*b;
    NSLog(@"%d",temp);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    secondViewController *new = [segue destinationViewController];
    new.temp2 = temp;
   // new.isSomethingEnabled = YES;
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (IBAction)button:(id)sender {
       
   }
- (IBAction)back:(id)sender {
    [[self.view viewWithTag:10] removeFromSuperview];
    

  //  [self dismissViewControllerAnimated:NO completion:nil];
}
@end
