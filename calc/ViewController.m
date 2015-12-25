//
//  ViewController.m
//  calc
//
//  Created by Admin on 24.12.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
enum
{
    OP_DIV  =101,
    OP_MUL  =102,
    OP_MINUS=103,
    OP_PLUS =104
};
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)num:(id)sender
{
    if (plusFlag) {
        y=x;
        x=0;
        plusFlag=NO;
    }
    x=(10.0f*x)+[sender tag];
  //  NSLog(@"%i",[sender tag]);
   [self calcscreen];
}
- (IBAction)clearall:(id)sender
{
    x=0;
    y=0;
    plusFlag=NO;
    yFlag=NO;
    [self calcscreen];
}

-(IBAction)operation:(id)sender
{
    if(yFlag && !plusFlag)
{
    switch (operation) {
        case OP_DIV:
            x= y /x;
            break;
        case OP_MUL:
            x= y*x;
            break;
        case OP_MINUS:
            x= y-x;
            break;
        case OP_PLUS:
            x= y+x;
        default:
            break;
    }
}

    y=x;
    yFlag=YES;
    plusFlag=YES;
    operation = [sender tag];
    [self calcscreen];
   // NSLog(@"%i",operation);
    
}
-(IBAction)inverse:(id)sender
{
    x=-x;
    [self calcscreen];
}
-(IBAction)clear:(id)sender
{

}
-(void)calcscreen
{
    NSString *str =[NSString stringWithFormat:@"%g",x];
    [_result setText:str];
    NSLog(@"ok");
}
@end
