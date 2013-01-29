//
//  RTHViewController.m
//  RTHBlocks
//
//  Created by RTH on 1/10/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "RTHViewController.h"

// Next section of code is a C function, not Objective-C. NSInteger is typedef'd to int
// NSInteger add(NSInteger intOne, NSInteger intTwo)
// {
//    return intOne + intTwo;

// }

NSInteger (^add)(NSInteger, NSInteger) = ^(NSInteger intOne, NSInteger intTwo)
 {
    return intOne + intTwo;

 };      // Wow. We really need the semicolon here!


typedef NSInteger (^addType)(NSInteger, NSInteger); // this replaces the "NSInteger" definition given above.

@interface RTHViewController ()
{
    IBOutlet UITextField* textFieldOne;
    IBOutlet UITextField* textFieldTwo;
    IBOutlet UILabel* resultLabel;
}
-(IBAction)addNumbers:(id)sender;

@end

@implementation RTHViewController



// -(IBAction)addNumbers:(id)sender
// {
//     int tmpInt = add(textFieldOne.text.intValue, textFieldTwo.text.intValue);
//
//     resultLabel.text = [NSString stringWithFormat:@"%i", tmpInt];
// }


// -(void)addTheNumbers:(NSInteger)intOne andNumber:(NSInteger)intTwo usingBlock:(addType)
//     addBlock
// {
//     resultLabel.text = [NSString stringWithFormat:@"%i", addBlock(intOne, intTwo)];
// }


-(IBAction)addNumbers:(id)sender
{
    //int tmpInt = add(textFieldOne.text.intValue, textFieldTwo.text.intValue);
    
    [self addTheNumbers:textFieldOne.text.intValue
              andNumber:textFieldTwo.text.intValue
             usingBlock:^(NSInteger intOne, NSInteger intTwo)
     {
         return intOne + intTwo;
     }];
    //myLabel.text = [NSString stringWithFormat:@"%i", tmpInt];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
