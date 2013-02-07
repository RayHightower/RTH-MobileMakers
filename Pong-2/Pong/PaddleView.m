//
//  PaddleView.m
//  Pong
//
//  Created by RTH on 1/28/13.
//  Copyright (c) 2013 Don Bora. All rights reserved.
//

#import "PaddleView.h"

@implementation PaddleView
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
    
}


-(void)movePaddleDown:(NSTimer*)timer
{
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


@end
