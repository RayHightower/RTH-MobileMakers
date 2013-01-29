//
//  GameViewController
//  Pong
//
//  Created by Don Bora on 10/8/12.
//  Copyright (c) 2012 Don Bora. All rights reserved.
//

#import "GameViewController.h"
#import "PaddleView.h"

@interface GameViewController ()
{
    IBOutlet PaddleView*    rightPaddleView;    // 
    IBOutlet PaddleView*    leftPaddleView;
    IBOutlet UIView*        ballView;
    int                     directionY;
    int                     directionX;
}

-(void)moveBall:(NSTimer*)timer;
@end



@implementation GameViewController

@synthesize leftScoreDisplay;
@synthesize rightScoreDisplay;

int leftScore = 0;
int rightScore = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];

    ballView.center = self.view.center;
    directionX = directionY = 1;
    
    [self startGameTimer];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight || interfaceOrientation == UIInterfaceOrientationLandscapeLeft );
}

-(void)resetGame
{
    [self resetBall:nil];
}


-(void)resetBall:(NSTimer*)timer
{
    [timer invalidate];
    ballView.center = self.view.center;
    directionY *= -1;
    directionX *= -1;
    [self startGameTimer];
}

-(void)moveBall:(NSTimer*)timer
{
    if ((ballView.frame.origin.y + ballView.frame.size.width > self.view.frame.size.height) ||
        (ballView.frame.origin.y < 0))
    {
        directionY *= -1;
    }
    
    if (ballView.frame.origin.x + ballView.frame.size.height > self.view.frame.size.width){
        // scoring: ball exits right, +1 for the left player
        leftScore++;
        leftScoreDisplay.text = [[NSString alloc] initWithFormat:@"%d",leftScore];
        [self resetBall:timer];
    }
    else if(ballView.frame.origin.x < 0){
        // scoring: ball exits left, +1 for the right player
        rightScore++;
        rightScoreDisplay.text = [[NSString alloc] initWithFormat:@"%d",rightScore];
        [self resetBall:timer];
    }
    
    ballView.center = CGPointMake(ballView.center.x + directionX, ballView.center.y + directionY);

    // collission detection with right paddle
    if (CGRectIntersectsRect(ballView.frame, rightPaddleView.frame)) {
        directionX *= -1;
        directionY *= -1;
    }

    // collission detection with left paddle
    if (CGRectIntersectsRect(ballView.frame, leftPaddleView.frame)) {
        directionX *= -1;
        directionY *= -1;
    }
    
    
}


-(void)startGameTimer
{
    [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(moveBall:) userInfo:nil repeats:YES];
}

-(void)startCountdownTimer
{
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(countDown:) userInfo:nil repeats:YES];
}


- (void)dealloc {
    // [_paddleView release];
    [super dealloc];
}
- (void)viewDidUnload {
    // [self setPaddleView:nil];
    [self setLeftScoreDisplay:nil];
    [self setRightScoreDisplay:nil];
    [super viewDidUnload];
}
@end
