//
//  AppDelegate.m
//  Password Generator
//
//  Created by Michael Asper on 8/8/14.
//  Copyright (c) 2014 Mikhail Studios. All rights reserved.
//

#import "AppDelegate.h"
#import "passwordGenerator.h"

@implementation AppDelegate
@synthesize passwordField;
@synthesize passwordLengthBox;
NSInteger pwLength;
BOOL numbers = NO;
BOOL uppercase = NO;
BOOL symbol = NO;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    pwLength = 6;
    [passwordLengthBox selectItemAtIndex:1];
}
- (IBAction)uppercaseBool:(id)sender {
    uppercase = uppercase ? NO:YES;
    NSLog(@"%hhd",uppercase);
}
- (IBAction)numberBool:(id)sender {
    numbers = numbers ? NO:YES;
    NSLog(@"%hhd",numbers);
}
- (IBAction)symbolBool:(id)sender {
    symbol = symbol ? NO:YES;
    NSLog(@"%hhd",symbol);

}

- (IBAction)generateText:(id)sender {
    NSString *test = generate(numbers, uppercase, symbol, pwLength);
    [passwordField setStringValue:test];
    
}
- (IBAction)passwordLength:(id)sender {
    
    NSString *selectedValue = [sender objectValueOfSelectedItem];
    pwLength = selectedValue.integerValue;
    NSLog(@"%lu", pwLength);
    
    
}
@end
