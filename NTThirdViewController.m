//
//  NTThirdViewController.m
//  CoreMotion
//
//  Created by Prem kumar on 05/01/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "NTThirdViewController.h"

@interface NTThirdViewController ()

@end

@implementation NTThirdViewController

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
    if ((!self.motionManager.magnetometerActive )|| (self.motionManager.magnetometerAvailable)) {
        [self.motionManager startMagnetometerUpdates];
    }
}

-(void)stopSensor{
    if (self.motionManager.magnetometerActive) {
        [self.motionManager stopMagnetometerUpdates];
    }
}
-(void)plotGraph{
    
    float graphValueX = self.motionManager.magnetometerData.magneticField.x;
    float graphValueY = self.motionManager.magnetometerData.magneticField.y;
    float graphValueZ = self.motionManager.magnetometerData.magneticField.z;
    
    [self.graphViewX setPoint:graphValueX];
    [self.graphViewY setPoint:graphValueY];
    [self.graphViewZ setPoint:graphValueZ];
    
    self.accValueX.text = [NSString stringWithFormat:@"%f",graphValueX];
    self.accValueY.text = [NSString stringWithFormat:@"%f",graphValueY];
    self.accValueZ.text = [NSString stringWithFormat:@"%f",graphValueZ];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
