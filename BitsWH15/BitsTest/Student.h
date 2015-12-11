//
//  Student.h
//  BitsTest
//
//  Created by Nikolay Berlioz on 27.09.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    StudentSubjectTypeBiology       = 1 << 0,
    StudentSubjectTypeMath          = 1 << 1,
    StudentSubjectTypeDevelopment   = 1 << 2,
    StudentSubjectTypeEnginireeng   = 1 << 3,
    StudentSubjectTypeArt           = 1 << 4,
    StudentSubjectTypePhycology     = 1 << 5,
    StudentSubjectTypeAnatomy       = 1 << 6
    
} StudentSubjectType;

@interface Student : NSObject

@property (assign, nonatomic) StudentSubjectType subjectType;

@property (strong, nonatomic) NSString *name;


/*
@property (assign, nonatomic) BOOL studiesBiology;
@property (assign, nonatomic) BOOL studiesMath;
@property (assign, nonatomic) BOOL studiesDevelopment;
@property (assign, nonatomic) BOOL studiesEnginireeng;
@property (assign, nonatomic) BOOL studiesArt;
@property (assign, nonatomic) BOOL studiesPhycology;
@property (assign, nonatomic) BOOL studiesAnatomy;
*/

@end
