//
//  GameViewController
//  Pong
//
//  Created by Don Bora on 10/8/12.
//  Copyright (c) 2012 Don Bora. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GameViewController : UIViewController <UIAlertViewDelegate>

// @property (retain, nonatomic) IBOutlet UIView *paddleView;

@property (retain, nonatomic) IBOutlet UILabel *leftScoreDisplay;

@property (retain, nonatomic) IBOutlet UILabel *rightScoreDisplay;

@end
