//
//  RootViewController.m
//  SingleViewVideoDemo
//
//  Created by Nucleus on 04/12/2012.
//  Copyright (c) 2012 Nucleus. All rights reserved.
//

#import "RootViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface RootViewController ()

@end

@implementation RootViewController

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

- (IBAction)playVideo:(id)sender
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 250)];
    
    NSURL *movieUrl = [NSURL URLWithString:@"http://chappelltime.co.uk/video/video-resized.mp4"];
    
    MPMoviePlayerViewController *controller = [[MPMoviePlayerViewController alloc] initWithContentURL:movieUrl];
    controller.moviePlayer.controlStyle = MPMovieControlStyleNone;
    controller.moviePlayer.fullscreen = YES;
    controller.moviePlayer.scalingMode = MPMovieScalingModeAspectFill;
    
    [headerView addSubview:controller.view];
    
    [controller.view setFrame:[headerView frame]];
    
    self.tableView.tableHeaderView = headerView;
    
//    [controller play];
}
@end
