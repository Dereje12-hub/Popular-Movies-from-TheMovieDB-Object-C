//
//  Movie.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//
#import <Foundation/Foundation.h>
#import "Movie.h"

@implementation Movie


//This instancetype DOES NOT do anything for this project. I kept it for future use

-(instancetype) initFromDictionary:(NSDictionary *)dictionary {
    self = [super init];    //initializing the self method
    if(self){
        //custom init
        self.id_movie = [[dictionary valueForKey:@"id_movie"] integerValue];
        self.title = [dictionary valueForKey:@"original_title"];
        self.backdropPath = [dictionary valueForKey:@"backdrop_ath"];
        self.posterPath = [dictionary valueForKey:@"poster_path"];
        self.overview = [dictionary valueForKey:@"overview"];
        self.voteAverage = [[dictionary valueForKey:@"vote_average"] integerValue];
        self.voteCount = [[dictionary valueForKey:@"vote_count"] integerValue];
        self.runtime = [[dictionary valueForKey:@"runtime"] integerValue];
        self.releaseDate = [dictionary valueForKey:@"release_date"];
        
    }
    return self;
    
}



@end

