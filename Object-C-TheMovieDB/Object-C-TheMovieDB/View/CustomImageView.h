
//
//  CustomImageView.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomImageView : UIImageView

@property (nullable) NSString *imageURL;

-(void) loadImageWithStringURL: (NSString *)urlString;

@end

NS_ASSUME_NONNULL_END
