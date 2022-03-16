# Photostorage

A flutter plugin to get all images, audios, videos and files location path in json format fork from https://pub.dev/packages/storage_path.

> Only for Android.
> If you like this plugin, like and follow me @kelpo123.

```dart
dependencies:
 gallery_storage: ^0.0.1
```

```dart
import 'package:kelpo123/gallery_storage.dart';
```

Sample Code

```dart
 try {
      imagePath = await GalleryStorage.imagesPath; //contains images path and folder name in json format
    } on PlatformException {
      imagesPath = 'Failed to get path';
    }
```

AND

```dart
videoPath = await Photostorage.videoPath; //this will return videos path
audioPath = await Photostorage.audioPath; //this will return audios path
filePath = await Photostorage.filePath; //this will return files path
```

Image Json Sample

```json
[
   {
      "files": ["path/screenshot/abc.png", "path/screenshot/pqr.png"],
      "folderName": "screenshot"
   }
]
```

File Json Sample

```json
[
   {
      "files": [
         {
            "mimeType": "application/pdf",
            "size": "34113",
            "title": "C001-SP-2719^201902",
            "path": "/storage/emulated/0/Download/abc.pdf"
         }
      ],
      "folderName": "Download"
   }
]
```

Audio Json Sample

```json
[
   {
      "files": [
         {
            "album": "ABC",
            "artist": "PQR",
            "path": "/storage/emulated/0/Download/todo.mp3",
            "dateAdded": "1515060080",
            "displayName": "todo.mp3",
            "duration": "235986",
            "size": "9506989"
         }
      ],
      "folderName": "Download"
   }
]
```

Video Json Sample

```json
[
   {
      "files": [
         {
            "path": "/storage/emulated/0/DCIM/Camera/VID_20190304_112455.mp4",
            "dateAdded": "1551678904",
            "displayName": "VID_20190304_112455.mp4",
            "duration": "7147",
            "size": "12787914"
         }
      ],
      "folderName": "Camera"
   }
]
```

## Thank you for contribution
