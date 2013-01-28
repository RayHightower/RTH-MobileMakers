//
//  DisplayViewController.h
//  PhotoViewer
//
//  Created by RTH on 1/21/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "photo.h"
#import "InfoViewController.h"

@interface DisplayViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *currentImage;
// Will the corresponding @synthesize statement be added automatically to .m?

@property (strong, nonatomic) Photo *currentPhoto;

@end
