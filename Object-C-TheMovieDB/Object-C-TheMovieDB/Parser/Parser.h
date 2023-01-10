//
//  Parse.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/12/23.
//

//#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Parse : UIViewController

+ (Movie *) parseMovie: (NSDictionary *) movieDic;
+ (NSMutableArray<Movie *> *) parseMovies: (NSDictionary *) moviesDic;


@end

NS_ASSUME_NONNULL_END
