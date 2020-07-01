//
//  FramyO.h
//  objcFramework
//
//  Created by Darius Jankauskas on 01/07/2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FramyO : NSObject

@property (nonatomic) NSString *name;

- (nonnull instancetype)initWithName: (nonnull NSString *) name;

@end

NS_ASSUME_NONNULL_END
