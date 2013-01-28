//
//  PhotosTableViewController.m
//  PhotoViewer
//
//  Created by RTH on 1/21/13.
//  Copyright (c) 2013 WisdomGroup. All rights reserved.
//

#import "PhotosTableViewController.h"

@interface PhotosTableViewController ()

@end

@implementation PhotosTableViewController

NSMutableArray  *photos;

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"ShowPhoto"]) {                 // If this is the correct segue (segues can be named) then let's go ahead and prepare for it.
        DisplayViewController *dvc = [segue destinationViewController];
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        Photo *c = [photos objectAtIndex:path.row];     // We can do better than single-letter variables!!!
        [dvc setCurrentPhoto:c];        
    }
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    photos = [[NSMutableArray alloc] init];
    
    Photo *pic = [[Photo alloc]  init];
    [pic setName:@"Front Door"];
    [pic setFilename:@"front.jpg"];
    [pic setNotes:@"Looking at the front of the South Shore Cultural Center. Let's see how many lines this label can handle before it shows the three dots!"];
    [photos addObject:pic];
    NSLog (@"\n** After 1st pic, [[photos objectAtIndex:path.0] name] = %@", [[photos objectAtIndex:0] name]);

    pic = [[Photo alloc]  init];                // Why do I need to do this again? Why can't I simply set properties on this temporary variable?
    [pic setName:@"Cart Sign"];
    [pic setFilename:@"cartsign.jpg"];
    [pic setNotes:@"Sign pointing to the golf carts. Let's see how many lines this label can handle before it shows the three dots!"];
    [photos addObject:pic];
    NSLog (@"\n** After 2nd pic, [[photos objectAtIndex:path.2] name] = %@", [[photos objectAtIndex:1] name]);

    pic = [[Photo alloc]  init];                // Why do I need to do this again? Why can't I simply set properties on this temporary variable?
    [pic setName:@"Lake & Rocks"];
    [pic setFilename:@"lakerocks.jpg"];
    [pic setNotes:@"Beautiful lake michigan, behind SSCC. Let's see how many lines this label can handle before it shows the three dots!"];
    [photos addObject:pic];
    NSLog (@"\n** After 3rd pic, [[photos objectAtIndex:path.2] name] = %@", [[photos objectAtIndex:0] name]);
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [photos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PhotoCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    Photo *current = [photos objectAtIndex:indexPath.row];  // Get the current photo.
    [cell.textLabel setText:[current name]];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
