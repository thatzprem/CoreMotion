//
//  NTSecondViewController.h
//  CoreMotion
//
//  Created by Prem kumar on 04/01/14.
//  Copyright (c) 2014 nexTip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NTBaseViewController.h"

@interface NTSecondViewController : NTBaseViewController

@property (weak, nonatomic) IBOutlet UILabel *accValueX;
@property (weak, nonatomic) IBOutlet UILabel *accValueY;
@property (weak, nonatomic) IBOutlet UILabel *accValueZ;
@property (nonatomic,strong) GraphView *graphViewX;
@property (nonatomic,strong) GraphView *graphViewY;
@property (nonatomic,strong) GraphView *graphViewZ;

@end
