
### Example
```dart
import 'package:android_toast/android_toast.dart';


  AndroidToast.showToast("My Toast  $count");

  // or set Toast Length

  AndroidToast.showToast("My Toast  $count",length: ToastLength.Long);

  // or set Gravity For Toast

  AndroidToast.showToast("My Toast  $count",length: ToastLength.Long,Gravity: ToastGravity.Center);

```