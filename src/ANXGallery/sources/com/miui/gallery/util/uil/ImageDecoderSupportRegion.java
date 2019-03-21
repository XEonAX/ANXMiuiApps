package com.miui.gallery.util.uil;

import android.graphics.Bitmap;
import com.miui.gallery.util.DecodeRegionImageUtils;
import com.nostra13.universalimageloader.core.decode.BaseImageDecoder;
import com.nostra13.universalimageloader.core.decode.ImageDecodingInfo;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.L;
import java.io.IOException;
import java.io.InputStream;

public class ImageDecoderSupportRegion extends BaseImageDecoder {
    public ImageDecoderSupportRegion(boolean loggingEnabled) {
        super(loggingEnabled);
    }

    public Bitmap decode(ImageDecodingInfo decodingInfo) throws IOException {
        if (decodingInfo.getRegionDecodeRect() == null) {
            return super.decode(decodingInfo);
        }
        InputStream imageStream = getImageStream(decodingInfo);
        try {
            Bitmap decodedBitmap;
            ImageFileInfo imageInfo = defineImageSizeAndRotation(imageStream, decodingInfo);
            imageStream = resetStream(imageStream, decodingInfo);
            if (decodingInfo.isRegionDecodeFace()) {
                decodedBitmap = DecodeRegionImageUtils.decodeFaceRegion(decodingInfo.getRegionDecodeRect(), imageStream, 1.5f, decodingInfo.getTargetSize().getWidth(), imageInfo.exif.exifOrientation);
            } else {
                decodedBitmap = DecodeRegionImageUtils.decodeRegion(decodingInfo.getRegionDecodeRect(), imageStream, decodingInfo.getTargetSize().getWidth());
            }
            IoUtils.closeSilently(imageStream);
            if (decodedBitmap != null) {
                return considerExactScaleAndOrientation(decodedBitmap, decodingInfo, imageInfo.exif.rotation, imageInfo.exif.flipHorizontal);
            }
            L.e("Image can't be decoded [%s]", decodingInfo.getImageKey());
            return decodedBitmap;
        } catch (Throwable th) {
            IoUtils.closeSilently(imageStream);
        }
    }

    protected InputStream getImageStream(ImageDecodingInfo decodingInfo) throws IOException {
        if (!decodingInfo.isSecretImage() || decodingInfo.getSecretKey() == null) {
            return super.getImageStream(decodingInfo);
        }
        InputStream imageStream = super.getImageStream(decodingInfo);
        if (imageStream != null) {
            return CryptUtil.getDecryptCipherInputStream(imageStream, decodingInfo.getSecretKey());
        }
        return null;
    }
}
