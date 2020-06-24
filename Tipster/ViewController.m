//
//  ViewController.m
//  Tipster
//
//  Created by Anna Kuznetsova on 6/23/20.
//  Copyright © 2020 Anna Kuznetsova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;

@property (weak, nonatomic) IBOutlet UILabel *tipLabel;

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    
    double bill = [self.billField.text doubleValue];
    
    NSArray *percentages = @[@(0.15), @(0.20), @(0.22)];
    
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip = bill * tipPercentage;
    double total = tip + bill;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f",tip] ;
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f",total];
}
- (IBAction)onEditingBegin:(id)sender {
}
- (IBAction)onEditingEnd:(id)sender {
}

@end
