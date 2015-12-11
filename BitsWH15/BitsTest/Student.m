//
//  Student.m
//  BitsTest
//
//  Created by Nikolay Berlioz on 27.09.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "Student.h"

@implementation Student



- (NSString*) answerByType: (StudentSubjectType) type
{
    return self.subjectType & type ? @"yes" : @"no";
}


- (NSString*) description
{
   
    return [NSString stringWithFormat:@" studis:\n"
                                        "biology = %@\n"
                                        "math = %@\n"
                                        "development = %@\n"
                                        "enginireeng = %@\n"
                                        "art = %@\n"
                                        "phycology = %@\n"
                                        "anatomy = %@",
                                        [self answerByType:StudentSubjectTypeBiology],
                                        [self answerByType:StudentSubjectTypeMath],
                                        [self answerByType:StudentSubjectTypeDevelopment],
                                        [self answerByType:StudentSubjectTypeEnginireeng],
                                        [self answerByType:StudentSubjectTypeArt],
                                        [self answerByType:StudentSubjectTypePhycology],
                                        [self answerByType:StudentSubjectTypeAnatomy]];
 
}






@end
