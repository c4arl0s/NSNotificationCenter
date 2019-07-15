//
//  ViewController.m
//  NSNotificationCenter
//
//  Created by Carlos Santiago Cruz on 7/11/19.
//  Copyright © 2019 Carlos Santiago Cruz. All rights reserved.
//

#import "ViewController.h"

// 1. Define a constant string value
//NSString const *mySpecialNotificationKey = @"specialNotificationKey";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *urlString = @"https://api.nasa.gov/planetary/apod?api_key=donTYCCXyjv1z6RfdxVqOa5IiFS8b6FagqVjEJLI";
    NSURL *url = [NSURL URLWithString:urlString];
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"finishing fetching data");
        NSString *dummyString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", dummyString);
        
        NSError *serializationError;
        NSArray *nasaJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&serializationError];
        if (serializationError) {
            NSLog(@"failed to serialize into JSON: %@", serializationError.description);
            return;
        }
        for (NSDictionary *dictionary in nasaJSON) {
            NSString *media_type = dictionary[@"media_type"];
            
        }
    } ] resume ];
}

//-(void)notify
//{
//    // 2. Post a notification to NSNotificationCenter identified by the key name defined before.
//    //[[NSNotificationCenter defaultCenter] postNotificationName:@"mySpecialNotificationKey" object:nil];
//}

@end
