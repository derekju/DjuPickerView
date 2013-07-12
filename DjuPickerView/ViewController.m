//
//  ViewController.m
//  DjuPickerView
//
//  Created by Derek Ju on 7/10/13.
//  Copyright (c) 2013 Derek Ju. All rights reserved.
//

#import "ViewController.h"
#import "DjuPickerView.h"

@interface ViewController () <DjuPickerViewDelegate, DjuPickerViewDataSource>

@end

@implementation ViewController {
    NSArray *_pickerData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _pickerData = @[@"Hello", @"This", @"Is", @"The", @"Custom", @"djuPickerView", @"It", @"Works", @"And", @"Looks", @"Great"];
    
	// Do any additional setup after loading the view, typically from a nib.
    DjuPickerView *djuPickerView = [[DjuPickerView alloc] initWithFrame:CGRectMake(10.0, 10.0, 300.0, 300.0)];
    djuPickerView.delegate = self;
    djuPickerView.dataSource = self;
    djuPickerView.backgroundColor = [UIColor colorWithRed:0.6980392157 green:0.6980392157 blue:0.6980392157 alpha:1.0];
    [self.view addSubview:djuPickerView];
    
    djuPickerView.overlayCell.backgroundColor = [UIColor redColor];
    
    [djuPickerView selectRow:3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - DjuPickerViewDelegate functions

- (NSString *)djuPickerView:(DjuPickerView *)djuPickerView titleForRow:(NSInteger)row {
    return [_pickerData objectAtIndex:row];
}

- (void)djuPickerView:(DjuPickerView*)djuPickerView didSelectRow:(NSInteger)row {
    NSLog(@"Row is %d", row);
}

- (CGFloat)rowHeightForDjuPickerView:(DjuPickerView *)djuPickerView {
    return 60.0;
}

- (void)labelStyleForDjuPickerView:(DjuPickerView*)djuPickerView forLabel:(UILabel*)label {
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
}

#pragma mark - DjuPickerViewDataSource functions

- (NSInteger)numberOfRowsInDjuPickerView:(DjuPickerView*)djuPickerView {
    return [_pickerData count];
}

@end
