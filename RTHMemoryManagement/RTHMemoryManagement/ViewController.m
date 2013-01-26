//
//  ViewController.m
//  RTHMemoryManagement
//
//  Created by RTH on 1/24/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    NSArray* items;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title =@"RTH ViewController";
	items =[[NSArray alloc] initWithObjects:@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",nil];
            
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [items count];
}




-(int)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondViewController* secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    
    secondViewController.string = [items objectAtIndex:indexPath.row];
    [self.view addSubview:secondViewController.view];
    
    return 0;
}






-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* tableViewCell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"MMTableViewReuseIdentifier"];
    
    NSString* string;
    
    if (tableViewCell == nil) {
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MMTableViewReuseIdentifier"];
        // use a different reuseIdentifier for each type of table cell that goes off of the screen
        // we do this because alloc init is expensive!!!!!!
    }
    else{
        NSLog(@"Now re-using cells.");
    }
    
    string = [NSString stringWithFormat:@"%i:%@", indexPath.row, [items objectAtIndex:indexPath.row]];
    // string = [NSString stringWithFormat:@"%i:%@", indexPath.row, [items objectAtIndex:indexPath.row]];
    
    tableViewCell.textLabel.text = string;
    
    NSLog(@"retainCount for String is %i", [string retainCount]);
    
    
    // tableViewCell.textLabel.text = [items objectAtIndex:indexPath.row];

    return tableViewCell;
    
}


@end
