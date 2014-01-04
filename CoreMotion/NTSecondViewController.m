//
//  NTSecondViewController.m
//  CoreMotion
//
//  Created by Prem kumar on 04/01/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "NTSecondViewController.h"

@interface NTSecondViewController ()

-(void)initGraph:(GraphView*)graphView Rect:(CGRect)frame;

@end

@implementation NTSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)startSensor{
    if ((!self.motionManager.accelerometerActive )|| (self.motionManager.accelerometerAvailable)) {
        [self.motionManager startAccelerometerUpdates];
    }
}

-(void)stopSensor{
    if (self.motionManager.accelerometerActive) {
        [self.motionManager stopAccelerometerUpdates];
    }
}

-(void)plotGraph{

    float graphValueX = self.motionManager.accelerometerData.acceleration.x *100;
    float graphValueY = self.motionManager.accelerometerData.acceleration.y *100;
    float graphValueZ = self.motionManager.accelerometerData.acceleration.z *100;
    
    [self.graphViewX setPoint:graphValueX];
    [self.graphViewY setPoint:graphValueY];
    [self.graphViewZ setPoint:graphValueZ];
    
    self.accValueX.text = [NSString stringWithFormat:@"%f",graphValueX];
    self.accValueY.text = [NSString stringWithFormat:@"%f",graphValueY];
    self.accValueZ.text = [NSString stringWithFormat:@"%f",graphValueZ];
}

-(void)initGraph{
    
    CGRect frameX = CGRectMake(10, 20, self.view.frame.size.width-20, 100);
    self.graphViewX = [[GraphView alloc]initWithFrame:frameX];
    [self initGraph:self.graphViewX Rect:frameX];
    
    CGRect frameY = CGRectMake(10, 130, self.view.frame.size.width-20, 100);
    self.graphViewY = [[GraphView alloc]initWithFrame:frameY];
    [self initGraph:self.graphViewY Rect:frameY];

    CGRect frameZ = CGRectMake(10, 240, self.view.frame.size.width-20, 100);
    self.graphViewZ = [[GraphView alloc]initWithFrame:frameZ];
    [self initGraph:self.graphViewZ Rect:frameZ];
    
}

-(void)initGraph:(GraphView*)graphView Rect:(CGRect)frame{
    
    // init graphView and set up options
    [graphView setBackgroundColor:[UIColor yellowColor]];
    [graphView setSpacing:100];
    [graphView setFill:YES];
    [graphView setStrokeColor:[UIColor redColor]];
    [graphView setZeroLineStrokeColor:[UIColor greenColor]];
    [graphView setFillColor:[UIColor orangeColor]];
    [graphView setLineWidth:2];
    [graphView setCurvedLines:YES];
    [self.view addSubview:graphView];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
