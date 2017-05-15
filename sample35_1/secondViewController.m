//
//  secondViewController.m
//  sample35_1
//
//  Created by The Atlanta Foundation on 11/05/17.
//  Copyright © 2017 cykul. All rights reserved.
//

#import "secondViewController.h"
#import "thirdViewController.h"
@interface secondViewController ()<UIWebViewDelegate>{
    NSString *temp4;
    UIWebView *paymentRequest;
    NSString *currentValue;
    NSArray *currentKeyValueParam;
}

@end

@implementation secondViewController
@synthesize temp2;
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    paymentRequest.tag=10;
//    NSString *urlAddress = @"http://www.thetaf.com/cykul/pelotons/payments/app/ios/initiatePaymentRequest.php";
//    NSURL *url = [NSURL URLWithString:urlAddress];
//    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
//    [_web loadRequest:requestObj];
    
    
    NSURL *url = [NSURL URLWithString: @"http://www.thetaf.com/cykul/pelotons/payments/app/ios/initiatePaymentRequest.php"];
    NSString *body = [NSString stringWithFormat: @"arg1=%@&arg2=%@", @"val1",@"val2"];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL: url];
    [request setHTTPMethod: @"POST"];
    [request setHTTPBody: [body dataUsingEncoding: NSUTF8StringEncoding]];
    [_web loadRequest: request];
    
    [self.view addSubview:_web];
    
//     NSString *webViewURLString =[_web stringByEvaluatingJavaScriptFromString:@"window.location.href"];
//    NSLog(@"Current URL ==> %@" , webViewURLString);
    
    
    

//    thirdViewController *new1 = [[thirdViewController alloc]init];
//    new1.temp3 = temp2;
//   
   // NSLog(@"%d temp3==>",temp2);
    // Do any additional setup after loading the view.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *currentExecutingURL = webView.request.URL.absoluteString;
    
    NSLog(@"Original URL ==> %@" , currentExecutingURL);
    
    NSArray *queryStringResponseParams = [currentExecutingURL componentsSeparatedByString:@"?"];
    
    if([queryStringResponseParams[0] isEqualToString:@"http://www.thetaf.com/cykul/pelotons/payments/app/ios/paymentResponse.php"]) {
        
        NSArray *responseResultParams = [queryStringResponseParams[1] componentsSeparatedByString:@"&"];
        
        for (NSString *currentKeyValuePair in responseResultParams) {
            
            currentKeyValueParam = [currentKeyValuePair componentsSeparatedByString:@"="];
            
            NSLog(@"%@ ==> %@" , currentKeyValueParam[0] , [currentKeyValueParam[1] stringByReplacingOccurrencesOfString:@"%20" withString:@" "]);
            
            [self performSegueWithIdentifier:@"third" sender:nil];
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
// [self dismissViewControllerAnimated:NO completion:nil];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    thirdViewController *newViewController = [segue destinationViewController];
    newViewController.paymentID = currentKeyValueParam;

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"third"]){
        
    }

}


- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
