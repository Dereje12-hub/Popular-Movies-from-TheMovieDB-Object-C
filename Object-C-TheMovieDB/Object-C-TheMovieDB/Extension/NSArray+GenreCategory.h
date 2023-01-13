//
//  NSArray+GenreCategory.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (GenreCategory)


// NSArray to return genre full String
- (NSString *) getStringWithCommas: (NSString *) dicKey;

@end

NS_ASSUME_NONNULL_END
