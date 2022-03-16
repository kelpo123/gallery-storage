#import "GalleryStoragePlugin.h"
#if __has_include(<gallery_storage/gallery_storage-Swift.h>)
#import <gallery_storage/gallery_storage-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gallery_storage-Swift.h"
#endif

@implementation GalleryStoragePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGalleryStoragePlugin registerWithRegistrar:registrar];
}
@end
