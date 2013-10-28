//
//  Feature.h
//  BRSD
//
//  Created by Alex on 12-11-26.
//
//

#import "Entity.h"


@interface Feature : BaseEntity
@property(nonatomic,assign)float feature_id;
@property(nonatomic,assign)double city_id;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)BOOL description;
@property(nonatomic,strong)NSString *icon;
@property(nonatomic,assign)int sequence;
//@property(nonatomic,assign)int spotTypeId;
@end
