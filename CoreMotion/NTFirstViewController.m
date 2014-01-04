//
//  NTFirstViewController.m
//  CoreMotion
//
//  Created by Prem kumar on 04/01/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "NTFirstViewController.h"

@interface NTFirstViewController ()

@end

@implementation NTFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)startSensor{
    if ((!self.motionManager.deviceMotionActive )|| (self.motionManager.deviceMotionAvailable)) {
    
        [self.motionManager startDeviceMotionUpdates];
    }
}

-(void)stopSensor{
    if (self.motionManager.deviceMotionActive) {
        [self.motionManager stopDeviceMotionUpdates];
    }
}

-(void)plotGraph{
    float sensorValue = self.motionManager.deviceMotion.attitude.roll *100;
    [self.graphView setPoint:sensorValue];
    self.dataLabel.text = [NSString stringWithFormat:@"%f",sensorValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
