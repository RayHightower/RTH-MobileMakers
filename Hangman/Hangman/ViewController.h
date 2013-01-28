//
//  ViewController.h
//  Hangman
//
//  Created by RTH on 1/27/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *displayedWord;


- (IBAction)enterLetter:(id)sender;



- (IBAction)newGame:(id)sender;


- (IBAction)currentLetterGuessed:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *failedGuesses;

@end
