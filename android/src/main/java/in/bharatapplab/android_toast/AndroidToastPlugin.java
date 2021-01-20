package in.bharatapplab.android_toast;

import android.content.Context;
import android.view.Gravity;
import android.widget.Toast;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** AndroidToastPlugin */
public class AndroidToastPlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;
  private Context context;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "android_toast");
    context=flutterPluginBinding.getApplicationContext();
    channel.setMethodCallHandler(this);
  }


  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    if (call.method.equals("showToast")) {
      Toast toast;
      String message=call.argument("message");
      if (call.argument("length").toString().equals("0")){
        toast=Toast.makeText(context, message, Toast.LENGTH_SHORT);
      }else{
        toast=Toast.makeText(context, message, Toast.LENGTH_LONG);
      }

      if (call.argument("Gravity").toString().equals("17")) {
        toast.setGravity(Gravity.CENTER, 0, 0);
        toast.show();
      }else if (call.argument("Gravity").toString().equals("80")) {

        toast.setGravity(Gravity.BOTTOM, 0, 0);
        toast.show();
      }else if (call.argument("Gravity").toString().equals("48")) {

        toast.setGravity(Gravity.TOP, 0, 0);
        toast.show();
      }else if (call.argument("Gravity").toString().equals("0")){
        toast.show();
      }

      result.success("Android " + toast);
    } else {
      result.notImplemented();
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }
}
