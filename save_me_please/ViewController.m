//
//  ViewController.m
//  save_me_please
//
//  Created by Felipe on 8/29/17.
//  Copyright © 2017 Proaplicaciones. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
- (IBAction)psawkClicked:(id)sender {
    system("ps|grep Google");
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
- (IBAction)chromeClicked:(id)sender {
    NSLog(@"I was also clicked");
    NSString *path = @"/usr/bin/killall";
    NSArray *args = [NSArray arrayWithObjects:@"Google Chrome Helper", nil];
    [[NSTask launchedTaskWithLaunchPath:path arguments:args] waitUntilExit];
}
- (IBAction)kcontClicked:(id)sender {
    NSLog(@"I was clicked");
    NSString *path = @"/usr/bin/kill";
    NSString *pid = [self.thePid stringValue];
    NSLog(@" %@ ", pid);
    NSArray *args = [NSArray arrayWithObjects:@"-CONT", pid, nil];
    [[NSTask launchedTaskWithLaunchPath:path arguments:args] waitUntilExit];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
