Description
=============

DjuPickerView is a custom picker view built with a standard UITableView that allows for complete control over the look and feel.

A sample project is included that has a single instance of the DjuPickerView.

Usage
=============

Instantiate the DjuPickerView like you would a regular picker view. You will need to implement the DjuPickerViewDelegate and DjuPickerViewDataSource methods.

    DjuPickerView *djuPickerView = [[DjuPickerView alloc] initWithFrame:CGRectMake(10.0, 10.0, 300.0, 300.0)];
    djuPickerView.delegate = self;
    djuPickerView.dataSource = self;
    [self.view addSubview:djuPickerView];
