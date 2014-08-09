//
//  AppDelegate.h
//  Password Generator
//
//  Created by Michael Asper on 8/8/14.
//  Copyright (c) 2014 Mikhail Studios. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)uppercaseBool:(id)sender;
- (IBAction)numberBool:(id)sender;
- (IBAction)symbolBool:(id)sender;
- (IBAction)generateText:(id)sender;
@property (weak) IBOutlet NSTextField *passwordField;
@property (weak) IBOutlet NSComboBox *passwordLengthBox;
- (IBAction)passwordLength:(id)sender;
@property (weak) IBOutlet NSTextField *crackTimeLabel;

@end
