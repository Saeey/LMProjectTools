//////////////////////////////////////
//                                  //
//  Copyright (c) 2016 流氓          //
//                                  //
//////////////////////////////////////
#import <asl.h>

#define THIS_FILE [(@"" __FILE__) lastPathComponent]


#define _NSLog(fmt,...) {                                             \
  do                                                                  \
  {                                                                   \
    NSString *str = [NSString stringWithFormat:fmt, ##__VA_ARGS__];   \
    printf("%s\n",[str UTF8String]);                                  \
    asl_log(NULL, NULL, ASL_LEVEL_NOTICE, "%s", [str UTF8String]);    \
  }                                                                   \
  while (0);                                                          \
}


#define CLOSE_LOG 0

#if CLOSE_LOG || !DEBUG
    #define NSLog(fmt, ...)
#else
    #define NSLog(fmt, ...) _NSLog((@"%@:%d %s " fmt), THIS_FILE, __LINE__, __FUNCTION__, ##__VA_ARGS__)
#endif
