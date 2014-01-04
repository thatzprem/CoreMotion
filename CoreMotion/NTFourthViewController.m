//
//  NTFourthViewController.m
//  CoreMotion
//
//  Created by Prem kumar on 05/01/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "NTFourthViewController.h"

@interface NTFourthViewController ()

@end

@implementation NTFourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)startSensor{
    if ((!self.motionManager.gyroActive )|| (self.motionManager.gyroAvailable)) {
        [self.motionManager startGyroUpdates];
    }
}

-(void)stopSensor{
    if (self.motionManager.gyroActive) {
        [self.motionManager stopGyroUpdates];
    }
}

-(void)plotGraph{
    
    float sensorValue = self.motionManager.gyroData.rotationRate.z *1000;
    [self.graphView setPoint:sensorValue];
    self.dataLabel.text = [NSString stringWithFormat:@"%f",sensorValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
