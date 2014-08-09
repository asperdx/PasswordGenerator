//
//  passwordGenerator.h
//  Password Generator
//
//  Created by Michael Asper on 8/8/14.
//  Copyright (c) 2014 Mikhail Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface passwordGenerator : NSObject

NSString* generate(BOOL, BOOL, BOOL, NSInteger);

NSString* scramble(NSString*);


@end
