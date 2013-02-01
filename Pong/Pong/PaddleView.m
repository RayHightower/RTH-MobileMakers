//
//  PaddleView.m
//  Pong
//
<<<<<<< HEAD
//  Created by RTH on 1/28/13.
=======
//  Created by Don Bora on 1/28/13.
>>>>>>> 004afb1f3b0a875628c825228c4f318e5b540ff3
//  Copyright (c) 2013 Don Bora. All rights reserved.
//

#import "PaddleView.h"

@implementation PaddleView
<<<<<<< HEAD
@synthesize autoPlay;   // dig into this. Implement autoplay!!


-(id)initWithCoder:(NSCoder *)aDecoder    // initWithCoder gets called by .xib file
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:0.01f
                                         target:self
                                       selector:@selector(movePaddleDown:)
                                       userInfo:nil repeats:YES];
        
    }
    return self;
=======
@synthesize autoPlay;

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
    }
    return self;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!autoPlay) {
        UITouch* touch = [touches anyObject];
        CGPoint point = [touch locationInView:self.superview];
        self.center = CGPointMake(self.center.x, point.y);
    }
}

-(void)setAutoPlay:(BOOL)_autoPlay
{
    autoPlay = _autoPlay;
    if(_autoPlay)
    {
        [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(movePaddleDown:) userInfo:nil repeats:YES];
    }
>>>>>>> 004afb1f3b0a875628c825228c4f318e5b540ff3
    
}


-(void)movePaddleDown:(NSTimer*)timer
{
<<<<<<< HEAD
    if((self.center.y + (self.frame.size.height/2)) >= self.superview.frame.size.height) {
        [timer invalidate];     // What does this do?
        [NSTimer scheduledTimerWithTimeInterval:0.01f
                                         target:self
                                       selector:@selector(movePaddleUp:)
                                       userInfo:nil repeats:YES];
    }
    else {
        self.center = CGPointMake(self.center.x, self.center.y + 1);
    }
}

-(void)movePaddleUp:(NSTimer*)timer
{
    if((self.center.y - (self.frame.size.height/2)) <= 0) {
        [timer invalidate];     // What does this do?
        [NSTimer scheduledTimerWithTimeInterval:0.01f
                                         target:self selector:@selector(movePaddleDown:)
                                       userInfo:nil repeats:YES];
    }
    else {
        self.center = CGPointMake(self.center.x, self.center.y - 1);
    }
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!autoPlay) {
        UITouch* touch = [touches anyObject];
        CGPoint point = [touch locationInView:self.superview];
        self.center = CGPointMake(self.center.x, point.y);  // keep x static. use the y of the touch location to move the paddle
    }
}

=======
    if ((self.center.y + (self.frame.size.height/2)) >= self.superview.frame.size.height) {
        [timer invalidate];
        [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(movePaddleUp:) userInfo:nil repeats:YES];
        
    }
    else{
        self.center = CGPointMake(self.center.x, self.center.y + 1);
    }
    
}


-(void)movePaddleUp:(NSTimer*)timer
{
    if ((self.center.y - (self.frame.size.height/2)) <= 0) {
        [timer invalidate];
        [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(movePaddleDown:) userInfo:nil repeats:YES];
        
    }
    else{
        self.center = CGPointMake(self.center.x, self.center.y - 1);
    }
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
>>>>>>> 004afb1f3b0a875628c825228c4f318e5b540ff3

@end
