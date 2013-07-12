Description
=============

DjuPickerView is a custom picker view built with a standard UITableView that allows for complete control over the look and feel.

![Preview image](http://dju.moogli.net/djuPickerView2.png)

A sample project is included that has a single instance of the picker view.

Usage
=============

Instantiate the DjuPickerView like you would a regular picker view. You will need to implement the DjuPickerViewDelegate and DjuPickerViewDataSource methods.

    DjuPickerView *djuPickerView = [[DjuPickerView alloc] initWithFrame:CGRectMake(10.0, 10.0, 300.0, 300.0)];
    djuPickerView.delegate = self;
    djuPickerView.dataSource = self;
    [self.view addSubview:djuPickerView];

Some basic exposed properties and methods have been provided to help customize the picker view though full customization is possible my modifying the source files.

    // Sets the color of the picker view
    djuPickerView.backgroundColor = [UIColor redColor];
    
    // Accesses the overlay cell for customization
    djuPickerView.overlayCell.backgroundColor = [UIColor blueColor];
    
    // Selects a row directly
    [djuPickerView selectRow:3];
    
The delegate functions that you must override are:

    - (NSString *)djuPickerView:(DjuPickerView *)djuPickerView titleForRow:(NSInteger)row;
    - (void)djuPickerView:(DjuPickerView*)djuPickerView didSelectRow:(NSInteger)row;
    - (CGFloat)rowHeightForDjuPickerView:(DjuPickerView *)djuPickerView;
    - (void)labelStyleForDjuPickerView:(DjuPickerView*)djuPickerView forLabel:(UILabel*)label;
    
The data source functions that you must override are:

    - (NSInteger)numberOfRowsInDjuPickerView:(DjuPickerView*)djuPickerView;

Contact
=============
Contact me at derek(dot)ju(at)gmail.com for any comments or criticisms.
