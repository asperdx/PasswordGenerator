//
//  passwordGenerator.m
//  Password Generator
//
//  Created by Michael Asper on 8/8/14.
//  Copyright (c) 2014 Mikhail Studios. All rights reserved.
//

#import "passwordGenerator.h"
#import "math.h"

@implementation passwordGenerator

NSString* scramble(NSString *toScramble){
    
    //Function to scramble the seed. Made by HiGuy on StackOverflow
    
    for (int i = 0; i < [toScramble length] * 15; i ++) {
        int pos = arc4random() % [toScramble length];
        int pos2 = arc4random() % ([toScramble length] - 1);
        char ch = [toScramble characterAtIndex:pos];
        NSString *before = [toScramble substringToIndex:pos];
        NSString *after = [toScramble substringFromIndex:pos + 1];
        NSString *temp = [before stringByAppendingString:after];
        before = [temp substringToIndex:pos2];
        after = [temp substringFromIndex:pos2];
        toScramble = [before stringByAppendingFormat:@"%c%@", ch, after];
    }
    return toScramble;
    
}

NSString* generate(BOOL number, BOOL upper, BOOL symbol, NSInteger length){
    
    NSMutableString *result = [NSMutableString string];
    NSString *lowercase = @"abcdefghijklmnopqrstuvwxyz";
    NSString *uppercase = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSString *numbers = @"0123456789";
    NSString *symbols = @"`~!@#$%^&*()_-+={}[]\\|:;\"'<>,.?/";
    NSString *seed = lowercase.copy;
    
    if(number){
        seed = [seed stringByAppendingString: numbers];
    }
    
    if(upper){
        seed = [seed stringByAppendingString:uppercase];
    }
    
    if(symbol){
        seed = [seed stringByAppendingString:symbols];
    }
    
    seed = scramble(seed);
    
    for (NSInteger i = 0; i < length; i++) {
        
        int pos = arc4random() % [seed length];
        char character = [seed characterAtIndex:pos];
        [result appendFormat:@"%c",character];

        
    }
    
    NSString *finalResult = [NSString stringWithString:result];
    NSLog(@"%@", finalResult);
    return finalResult;
}



@end
