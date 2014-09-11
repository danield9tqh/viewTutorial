//
//  DCViewController.m
//  viewTutorial
//
//  Created by Daniel Cogan on 9/11/14.
//  Copyright (c) 2014 Daniel Cogan. All rights reserved.
//

#import "DCViewController.h"
#import "DCGrid.h"

@interface DCViewController (){
    UIButton* _button;
    UIView* _gridView;
}

@end

@implementation DCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    //create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)* .1;
    CGFloat y = CGRectGetHeight(frame)* .1;
    CGFloat size = MIN(CGRectGetHeight(frame), CGRectGetWidth(frame))* .80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    //create grid view
    _gridView = [[DCGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    //create the button
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_gridView addSubview:_button];
    
    //create target for button
    [_button addTarget:self action:@selector(buttonHighlight:) forControlEvents:UIControlEventTouchUpInside];
    [_button setTitle:@"Hit Me!" forState:UIControlStateNormal];
    _button.titleLabel.font = [UIFont systemFontOfSize: 9];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
