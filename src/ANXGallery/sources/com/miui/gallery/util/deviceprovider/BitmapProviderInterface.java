package com.miui.gallery.util.deviceprovider;

import android.graphics.BitmapFactory.Options;
import java.io.IOException;

public interface BitmapProviderInterface {
    Options getBitmapSize(String str) throws IOException;
}
