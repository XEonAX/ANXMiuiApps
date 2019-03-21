package com.miui.gallery.hybrid.hybridclient;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.format.DateFormat;
import android.util.Base64;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.FileChooserParams;
import android.webkit.WebView;
import com.miui.gallery.R;
import com.miui.gallery.activity.ExternalPhotoPageActivity;
import com.miui.gallery.hybrid.hybridclient.GalleryHybridClient.GalleryWebChromeClientWrapper;
import com.miui.gallery.hybrid.hybridclient.GalleryHybridClient.ImageCountGotCallback;
import com.miui.gallery.hybrid.hybridclient.GalleryHybridClient.ImageInfo;
import com.miui.gallery.hybrid.hybridclient.HybridClient.JsInterfacePair;
import com.miui.gallery.hybrid.hybridclient.wrapper.WebChromeClientWrapper;
import com.miui.gallery.request.HostManager;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.BaseDocumentProviderUtils.WriteHandler;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.ToastUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

public class OperationHybridClient extends GalleryHybridClient {
    private int mMaxSelectCount;
    private ValueCallback<Uri[]> mValueCallback;

    public class OperationStoryJSBridge {
        OperationStoryJSBridge() {
        }

        @JavascriptInterface
        public boolean saveImage(String imageInfoString) {
            OperationHybridClient.this.recordSaveEvent("save_click");
            if (!HostManager.isInternalUrl(OperationHybridClient.this.mCurrentUrl)) {
                return false;
            }
            ImageInfo imageInfo = (ImageInfo) GsonUtils.fromJson(imageInfoString, ImageInfo.class);
            if (!(imageInfo == null || imageInfo.data == null)) {
                try {
                    byte[] bytes = Base64.decode(imageInfo.data, 0);
                    final Bitmap bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.length);
                    if (bitmap != null) {
                        Log.d("OperationHybridClient", "save image from html,image size: %d X %d", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
                        CharSequence stamp = DateFormat.format("yyyyMMdd_HHmmss", System.currentTimeMillis());
                        File file = new File(StorageUtils.getCreativeDirectory(), String.format(Locale.US, "IMG_%s.jpg", new Object[]{stamp}));
                        Boolean result = (Boolean) BaseDocumentProviderUtils.safeWriteFile(file.getAbsolutePath(), new WriteHandler<Boolean>() {
                            public Boolean handle(FileOutputStream out) {
                                return Boolean.valueOf(GalleryUtils.saveBitmapToOutputStream(bitmap, CompressFormat.JPEG, out));
                            }
                        });
                        if (result == null || !result.booleanValue()) {
                            ToastUtils.makeText(OperationHybridClient.this.mContext, (int) R.string.main_save_error_msg);
                            Log.d("OperationHybridClient", "save image fail,bitmap compress error");
                        } else {
                            OperationHybridClient.this.callJsMethod(OperationHybridClient.this.mWebView, "javascript:onImageSaveResult()", null);
                            MediaScanner.scanSingleFile(OperationHybridClient.this.mContext, file.getPath());
                            MediaStoreUtils.insert(OperationHybridClient.this.mContext, file, 1);
                            OperationHybridClient.this.recordSaveEvent("save_success");
                            OperationHybridClient.this.gotoPhotoPage(file.getPath());
                        }
                    } else {
                        Log.d("OperationHybridClient", "save image fail,no bitmap got from web");
                    }
                    return true;
                } catch (Object ex) {
                    Log.e("OperationHybridClient", "saveImage() failed %s", ex);
                } catch (Object ex2) {
                    Log.e("OperationHybridClient", "saveImage() failed %s", ex2);
                } catch (Object e) {
                    Log.e("OperationHybridClient", "saveImage %s", e);
                } catch (Object e2) {
                    Log.e("OperationHybridClient", "saveImage %s", e2);
                }
            }
            return false;
        }
    }

    public class OperationWebChromeClientWrapper extends GalleryWebChromeClientWrapper {
        public OperationWebChromeClientWrapper(WebChromeClient wrappedWebChromeClient) {
            super(wrappedWebChromeClient);
        }

        @TargetApi(21)
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, FileChooserParams fileChooserParams) {
            if (OperationHybridClient.this.mContext == null) {
                Log.d("OperationHybridClient", "onShowFileChooser: already detached, do nothing");
                return false;
            }
            OperationHybridClient.this.mValueCallback = filePathCallback;
            if (fileChooserParams.getMode() == 0) {
                OperationHybridClient.this.mMaxSelectCount = 1;
                startPicker(OperationHybridClient.this.mMaxSelectCount);
                return true;
            }
            OperationHybridClient.this.mMaxSelectCount = 20;
            getFileChooserMaxImageCount(webView, new ImageCountGotCallback() {
                public void onGetMaxImageCount(int count) {
                    if (count > 0) {
                        OperationHybridClient.this.mMaxSelectCount = Math.min(count, 20);
                    }
                    OperationWebChromeClientWrapper.this.startPicker(OperationHybridClient.this.mMaxSelectCount);
                }
            });
            return true;
        }

        public void getFileChooserMaxImageCount(WebView webView, final ImageCountGotCallback countGotCallback) {
            OperationHybridClient.this.callJsMethod(webView, "javascript:getMaxImageCount()", new ValueCallback<String>() {
                public void onReceiveValue(String value) {
                    Log.d("OperationHybridClient", "get max image count from html:%s", (Object) value);
                    int maxCount = 0;
                    try {
                        maxCount = Integer.parseInt(value);
                    } catch (Throwable e) {
                        Log.e("OperationHybridClient", e);
                    }
                    if (countGotCallback != null) {
                        countGotCallback.onGetMaxImageCount(maxCount);
                    }
                }
            });
        }

        public void startPicker(int maxImageCount) {
            if (OperationHybridClient.this.mWebViewFragment != null) {
                Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.setType("image/*");
                intent.putExtra("pick-upper-bound", maxImageCount);
                intent.putExtra("pick_close_type", 3);
                intent.setPackage("com.miui.gallery");
                OperationHybridClient.this.mWebViewFragment.startActivityForResult(intent, 1);
            }
        }
    }

    public OperationHybridClient(Context context, String url) {
        super(context, url);
    }

    public boolean isSupportPullToRefresh() {
        return false;
    }

    public WebChromeClientWrapper getWebChromeClient(WebChromeClient webChromeClient) {
        return new OperationWebChromeClientWrapper(webChromeClient);
    }

    public List<JsInterfacePair> getJavascriptInterfaces() {
        List<JsInterfacePair> jsInterfacePairs = super.getJavascriptInterfaces();
        if (jsInterfacePairs == null) {
            jsInterfacePairs = new ArrayList(1);
        }
        jsInterfacePairs.add(new JsInterfacePair("MiuiGalleryOperationStoryJSBridge", new OperationStoryJSBridge()));
        return jsInterfacePairs;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case 1:
                switch (resultCode) {
                    case -1:
                        receiveImages(data);
                        return;
                    default:
                        receiveImages(null);
                        return;
                }
            default:
                return;
        }
    }

    private void receiveImages(Intent data) {
        Uri[] uris = null;
        if (data != null) {
            ClipData clipData = data.getClipData();
            Uri sigleImage = data.getData();
            if (clipData != null) {
                int count = clipData.getItemCount();
                uris = new Uri[count];
                count = Math.min(count, this.mMaxSelectCount);
                for (int i = 0; i < count; i++) {
                    uris[i] = resolveUri(clipData.getItemAt(i).getUri());
                }
            } else if (sigleImage != null) {
                uris = new Uri[]{sigleImage};
            }
        }
        if (VERSION.SDK_INT >= 21) {
            if (this.mValueCallback != null) {
                this.mValueCallback.onReceiveValue(uris);
            }
            this.mValueCallback = null;
        }
    }

    private Uri resolveUri(Uri uri) {
        if (uri.getAuthority().equals("com.miui.gallery.open")) {
            return Uri.fromFile(new File(uri.getLastPathSegment()));
        }
        return uri;
    }

    private void gotoPhotoPage(String path) {
        if (this.mWebViewFragment != null && this.mWebViewFragment.getActivity() != null) {
            Intent intent = new Intent(this.mWebViewFragment.getActivity(), ExternalPhotoPageActivity.class);
            intent.setData(Uri.fromFile(new File(path)));
            this.mWebViewFragment.startActivity(intent);
        }
    }

    public void recordSaveEvent(String action) {
        HashMap<String, String> params = new HashMap();
        params.put("save_action", action);
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_operation_card_image_save_success", params);
    }
}
