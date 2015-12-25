//
//  ViewController.h
//  calc
//
//  Created by Admin on 24.12.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    double x,y;
    NSInteger operation;
    BOOL plusFlag,yFlag;
   }
@property (weak, nonatomic) IBOutlet UILabel *result;

-(IBAction)num:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)clearall:(id)sender;
-(IBAction)inverse:(id)sender;
-(IBAction)operation:(id)sender;
@end

