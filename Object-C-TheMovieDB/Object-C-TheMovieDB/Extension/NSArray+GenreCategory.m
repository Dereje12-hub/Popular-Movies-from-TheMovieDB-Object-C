//
//  NSArray+GenreCategory.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import "NSArray+GenreCategory.h"

@implementation NSArray (GenreCategory)

- (NSString *) getStringWithCommas: (NSString *) dicKey {
    
    NSString *resultString = NSString.new;
    NSString *symbol = @", ";
    
    for (NSDictionary *genreObject in self) {
        NSString *stringValue = [genreObject objectForKey: dicKey];
        
        if (genreObject != self.lastObject) {
             stringValue = [stringValue stringByAppendingString: symbol];
        }
        
        resultString = [resultString stringByAppendingString: stringValue];
    }
    
    return resultString;
}

@end
