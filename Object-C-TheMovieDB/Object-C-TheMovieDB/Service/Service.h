//
//  Service.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/12/23.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Service : NSObject

typedef enum moviesCategoryType {
    POPULAR,
} moviesCategory;

@property NSString *const urlBase;


+ (void) fetchMovies:(moviesCategory)moviesCategory completion: (void (^)(NSMutableArray*))callback;

+ (void) fetchImageData:(NSString* )imageURL completion:(void (^)(UIImage *))callback;

+ (void) fetchMovieDetails:(NSNumber* )movieId completion:(void (^)(Movie*))callback;


@end

NS_ASSUME_NONNULL_END
