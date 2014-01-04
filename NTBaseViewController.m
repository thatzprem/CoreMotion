//
//  NTBaseViewController.m
//  CoreMotion
//
//  Created by Prem kumar on 04/01/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import "NTBaseViewController.h"

@interface NTBaseViewController ()

@property(nonatomic,strong)NSTimer *timer;

@end



@implementation NTBaseViewController

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
    
    self.motionManager = [[CMMotionManager alloc] init];
    [self initGraph];
}

-(void)startTimer{
    if (![self.timer isValid]) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0 target:self selector:@selector(plotGraph) userInfo:nil repeats:YES];
    }
}

-(void)stopTimer{
    if ([self.timer isValid]) {
        [self.timer invalidate];
    }
}

-(void)viewWillAppear:(BOOL)animated{
    [self startSensor];
    [self startTimer];
}

-(void)viewWillDisappear:(BOOL)animated{
    [self stopSensor];
    [self stopTimer];
}

-(void)startSensor{
}

-(void)stopSensor{
    
}

-(void)plotGraph{

}

-(void)initGraph{
    
    // init graphView and set up options
    self.graphView = [[GraphView alloc]initWithFrame:CGRectMake(10, 20, self.view.frame.size.width-20, 180)];
    [self.graphView setBackgroundColor:[UIColor yellowColor]];
    [self.graphView setSpacing:100];
    [self.graphView setFill:YES];
    [self.graphView setStrokeColor:[UIColor redColor]];
    [self.graphView setZeroLineStrokeColor:[UIColor greenColor]];
    [self.graphView setFillColor:[UIColor orangeColor]];
    [self.graphView setLineWidth:2];
    [self.graphView setCurvedLines:YES];
    [self.view addSubview:self.graphView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
