//
//  DjuPickerView.h
//
//  Copyright (c) 2013 Derek Ju. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DjuPickerViewDelegate;
@protocol DjuPickerViewDataSource;

@interface DjuPickerView : UIView

- (void)selectRow:(NSInteger)row;

// The overlay that denotes which cell is currently targeted
@property (nonatomic, strong) UIView *overlayCell;
// Background color for the table view
@property (nonatomic, strong) UIColor *backgroundColor;
// Our delegate
@property (nonatomic, weak) id <DjuPickerViewDelegate> delegate;
// Our data source
@property (nonatomic, weak) id <DjuPickerViewDataSource> dataSource;

@end

@protocol DjuPickerViewDelegate

- (NSString *)djuPickerView:(DjuPickerView*)djuPickerView titleForRow:(NSInteger)row;
- (void)djuPickerView:(DjuPickerView*)djuPickerView didSelectRow:(NSInteger)row;
- (CGFloat)rowHeightForDjuPickerView:(DjuPickerView*)djuPickerView;
- (void)labelStyleForDjuPickerView:(DjuPickerView*)djuPickerView forLabel:(UILabel*)label;

@end

@protocol DjuPickerViewDataSource

- (NSInteger)numberOfRowsInDjuPickerView:(DjuPickerView*)djuPickerView;

@end