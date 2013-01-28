//
//  InfoViewController.h
//  PhotoViewer
//
//  Created by RTH on 1/21/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface InfoViewController : UIViewController

@property (strong, nonatomic) Photo *currentPhoto;

@property (strong, nonatomic) IBOutlet UILabel *detailsLabel;

- (IBAction)dismiss:(id)sender;

@end
