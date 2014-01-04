//
//  NTBaseViewController.h
//  CoreMotion
//
//  Created by Prem kumar on 04/01/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>
#import "GraphView.h"

@interface NTBaseViewController : UIViewController

@property(nonatomic,strong) CMMotionManager *motionManager;
@property (strong, nonatomic) GraphView *graphView;
@property (weak, nonatomic) IBOutlet UILabel *dataLabel;

@end
