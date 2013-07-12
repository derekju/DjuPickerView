Description
=============

DjuPickerView is a custom picker view built with a standard UITableView that allows for basic built in customization over the look and feel. I started this project as the default UIPickerView was too limited in what could be changed as I was trying to achieve a flat design for a picker view.

![Preview image](http://dju.moogli.net/djuPickerView2.png)

A sample project is included that has a single instance of the picker view. Extension of the picker view is relatively simple and can be used to further customize the picker view to fit any UI design.

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

License
=============

MIT LICENSE

Copyright (C) <2013> <Derek Ju>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
