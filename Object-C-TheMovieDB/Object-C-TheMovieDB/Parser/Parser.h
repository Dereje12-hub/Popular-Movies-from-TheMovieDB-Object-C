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

@interface Parser : UIViewController

+ (Movie *) parseMovie: (NSDictionary *) movieDictionary;

+ (NSMutableArray<Movie *> *) parseMovies: (NSDictionary *) movieDictionary;


@end

NS_ASSUME_NONNULL_END
