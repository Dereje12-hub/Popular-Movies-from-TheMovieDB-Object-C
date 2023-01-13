//
//  Movie.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject

@property NSNumber *movieID;
@property NSString *title;
@property NSString *overview;
@property NSString *genres;
@property NSNumber *vote_avegare;
@property NSString *imageURL;


//These perties DOES NOT do anything for this project. I kept it for future use

@property (nonatomic, assign) NSInteger id_movie;
//@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* backdropPath;
@property (nonatomic, copy) NSString* posterPath;
//@property (nonatomic, copy) NSString* overview;
@property (nonatomic, assign) double voteAverage;
@property (nonatomic, assign) NSInteger voteCount;
@property (nonatomic, assign) NSInteger runtime;
@property (nonatomic, copy) NSString* releaseDate;

//

-(instancetype)initFromDictionary:(NSDictionary*)dictionary;


@end

NS_ASSUME_NONNULL_END


