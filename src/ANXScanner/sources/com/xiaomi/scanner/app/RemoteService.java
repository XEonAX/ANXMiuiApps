package com.xiaomi.scanner.app;

import android.app.Service;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.miui.barcodescanner.lib.utils.IRemoteService.Stub;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.QRCodeDecoder;
import com.xiaomi.scanner.module.code.codec.QRCodeEncoder;
import com.xiaomi.scanner.module.code.utils.Utils;

public class RemoteService extends Service {
    private static final Tag TAG = new Tag("RemoteService");
    private IBinder mBinder = new ServiceStub(this);

    static class ServiceStub extends Stub {
        private RemoteService mService;

        ServiceStub(RemoteService service) {
            this.mService = service;
        }

        public Bitmap createQRImage(String text, int qrImageSize) throws RemoteException {
            try {
                return QRCodeEncoder.encodeText(text, qrImageSize);
            } catch (WriterException e) {
                Log.e(RemoteService.TAG, "WriterException", e);
            } catch (OutOfMemoryError e2) {
                Log.e(RemoteService.TAG, "OutOfMemoryError", e2);
            }
            return null;
        }

        public String recogniseQRImage(Uri uri) throws RemoteException {
            try {
                Result result = QRCodeDecoder.decode(Utils.getFilePathFromUri(uri));
                if (result == null) {
                    return null;
                }
                return Utils.formatToGB(result.getText());
            } catch (Exception e) {
                Log.e(RemoteService.TAG, "Exception", e);
                return null;
            }
        }
    }

    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
