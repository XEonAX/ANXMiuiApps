package com.nostra13.universalimageloader.core.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.support.media.ExifInterface;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.uil.PhotoBytesCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.L;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;

public class BaseImageDecoder implements ImageDecoder {
    protected final boolean loggingEnabled;

    protected static class ExifInfo {
        public final int exifOrientation;
        public final boolean flipHorizontal;
        public final int rotation;

        protected ExifInfo() {
            this.rotation = 0;
            this.flipHorizontal = false;
            this.exifOrientation = 0;
        }

        protected ExifInfo(int rotation, boolean flipHorizontal, int exifOrientation) {
            this.rotation = rotation;
            this.flipHorizontal = flipHorizontal;
            this.exifOrientation = exifOrientation;
        }
    }

    protected static class ImageFileInfo {
        public final ExifInfo exif;
        public final ImageSize imageSize;

        protected ImageFileInfo(ImageSize imageSize, ExifInfo exif) {
            this.imageSize = imageSize;
            this.exif = exif;
        }
    }

    public BaseImageDecoder(boolean loggingEnabled) {
        this.loggingEnabled = loggingEnabled;
    }

    /* JADX WARNING: Missing block: B:27:0x007b, code:
            if (r3.isRecycled() != false) goto L_0x007d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Bitmap decode(ImageDecodingInfo decodingInfo) throws IOException {
        Throwable th;
        Bitmap decodedBitmap = null;
        InputStream imageStream = null;
        boolean tryLoadFromBigPhoto = false;
        try {
            String bigPhotoUri = decodingInfo.getImageUri();
            long imageSize = decodingInfo.isConsiderFileLength() ? decodingInfo.getFileLength() : 0;
            if (decodingInfo.isLoadFromBigPhotoCache()) {
                String fileUri = convertToFileScheme(bigPhotoUri);
                if (fileUri != null) {
                    bigPhotoUri = fileUri;
                    tryLoadFromBigPhoto = true;
                    ImageLoader.getInstance().waitLockForUri(bigPhotoUri, 1, TimeUnit.SECONDS);
                }
            }
            byte[] bytes = null;
            if (decodingInfo.isCacheBigPhoto() || tryLoadFromBigPhoto) {
                bytes = PhotoBytesCache.getInstance().getData(MemoryCacheUtils.generateBigPhotoKey(bigPhotoUri, imageSize));
            }
            if (bytes != null && bytes.length > 0) {
                if (tryLoadFromBigPhoto) {
                    Log.d(ImageLoader.TAG, "try load from big photo cache successfully");
                }
                InputStream imageStream2 = new ByteArrayInputStream(bytes);
                try {
                    decodedBitmap = decodeInternal(decodingInfo, imageStream2, false);
                    Log.i(ImageLoader.TAG, "decode from cache " + decodingInfo.getImageUri());
                    imageStream = imageStream2;
                } catch (Throwable th2) {
                    th = th2;
                    imageStream = imageStream2;
                    IoUtils.closeSilently(imageStream);
                    throw th;
                }
            }
            if (decodedBitmap != null) {
            }
            IoUtils.closeSilently(imageStream);
            String bigPhotoKey = null;
            if (decodingInfo.isCacheBigPhoto() && !decodingInfo.isDecodeThumbnail()) {
                bigPhotoKey = MemoryCacheUtils.generateBigPhotoKey(decodingInfo.getImageUri(), imageSize);
            }
            imageStream = getImageStream(decodingInfo);
            if (imageStream == null) {
                L.e("No stream for image [%s]", decodingInfo.getImageKey());
                IoUtils.closeSilently(imageStream);
                return null;
            }
            decodedBitmap = decodeInternal(decodingInfo, imageStream, true);
            if (decodingInfo.isCacheBigPhoto() && !decodingInfo.isDecodeThumbnail()) {
                bytes = BitmapUtils.compressToBytes(decodedBitmap, 100);
                if (bytes != null && bytes.length > 0) {
                    PhotoBytesCache.getInstance().putData(bigPhotoKey, bytes);
                }
            }
            IoUtils.closeSilently(imageStream);
            return decodedBitmap;
        } catch (Throwable th3) {
            th = th3;
            IoUtils.closeSilently(imageStream);
            throw th;
        }
    }

    private Bitmap decodeInternal(ImageDecodingInfo decodingInfo, InputStream inImageStream, boolean considerOrientation) throws IOException {
        Bitmap decodedBitmap = null;
        ImageFileInfo imageInfo = null;
        InputStream imageStream = inImageStream;
        if (considerOrientation) {
            try {
                imageInfo = defineImageSizeAndRotation(imageStream, decodingInfo);
            } catch (Throwable th) {
                if (!(null == null || null.inBitmap == null)) {
                    L.e("decode (%1$s) (inSampleSize=%2$d) error use inBitmap (width=%3$d height=%4$d)", imageInfo.imageSize, Integer.valueOf(null.inSampleSize), Integer.valueOf(null.inBitmap.getWidth()), Integer.valueOf(null.inBitmap.getHeight()));
                    if (!null.inBitmap.isRecycled()) {
                        null.inBitmap.recycle();
                    }
                    null.inBitmap = null;
                    imageStream = resetStream(imageStream, decodingInfo);
                    decodedBitmap = BitmapFactory.decodeStream(imageStream, null, null);
                }
            }
        } else {
            imageInfo = defineImageSize(imageStream);
        }
        imageStream = resetStream(imageStream, decodingInfo);
        decodedBitmap = BitmapFactory.decodeStream(imageStream, null, prepareDecodingOptions(imageInfo.imageSize, decodingInfo));
        if (decodedBitmap == null) {
            L.e("Image can't be decoded [%s]", decodingInfo.getImageKey());
        } else {
            decodedBitmap = considerExactScaleAndOrientation(decodedBitmap, decodingInfo, imageInfo.exif.rotation, imageInfo.exif.flipHorizontal);
        }
        if (imageStream != inImageStream) {
            IoUtils.closeSilently(imageStream);
        }
        return decodedBitmap;
    }

    private String convertToFileScheme(String uri) {
        Scheme scheme = Scheme.ofUri(uri);
        if (scheme == Scheme.FILE) {
            return uri;
        }
        if (scheme == Scheme.CONTENT) {
            String filePath = MediaStoreUtils.getMediaFilePath(uri);
            if (!TextUtils.isEmpty(filePath)) {
                return Scheme.FILE.wrap(filePath);
            }
        }
        return null;
    }

    protected InputStream getImageStream(ImageDecodingInfo decodingInfo) throws IOException {
        return decodingInfo.getDownloader().getStream(decodingInfo.getImageUri(), decodingInfo.getExtraForDownloader());
    }

    protected ImageFileInfo defineImageSize(InputStream imageStream) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(imageStream, null, options);
        ExifInfo exif = new ExifInfo();
        return new ImageFileInfo(new ImageSize(options.outWidth, options.outHeight, exif.rotation), exif);
    }

    protected ImageFileInfo defineImageSizeAndRotation(InputStream imageStream, ImageDecodingInfo decodingInfo) throws IOException {
        ExifInfo exif;
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(imageStream, null, options);
        String imageUri = decodingInfo.getImageUri();
        if (decodingInfo.shouldConsiderExifParams() && canDefineExifParams(imageUri, options.outMimeType)) {
            exif = defineExifOrientation(decodingInfo);
        } else {
            exif = new ExifInfo();
        }
        return new ImageFileInfo(new ImageSize(options.outWidth, options.outHeight, exif.rotation), exif);
    }

    private boolean canDefineExifParams(String imageUri, String mimeType) {
        return "image/jpeg".equalsIgnoreCase(mimeType);
    }

    private boolean canDefineExifFromPath(ImageDecodingInfo decodingInfo) {
        return Scheme.ofUri(decodingInfo.getImageUri()) == Scheme.FILE;
    }

    protected ExifInfo defineExifOrientation(ImageDecodingInfo decodingInfo) {
        ExifInfo canDefineExifFromPath = canDefineExifFromPath(decodingInfo);
        if (canDefineExifFromPath != null) {
            byte[] secretKey = (!decodingInfo.isSecretImage() || decodingInfo.getSecretKey() == null) ? null : decodingInfo.getSecretKey();
            return defineExifOrientation(Scheme.FILE.crop(decodingInfo.getImageUri()), secretKey);
        }
        InputStream stream = null;
        try {
            stream = getImageStream(decodingInfo);
            if (stream != null) {
                canDefineExifFromPath = defineExifOrientation(stream);
                return canDefineExifFromPath;
            }
            IoUtils.closeSilently(stream);
            return new ExifInfo();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            IoUtils.closeSilently(stream);
        }
    }

    private ExifInfo defineExifOrientation(String path, byte[] secretKey) {
        com.miui.gallery.util.ExifUtil.ExifInfo exifInfo = ExifUtil.parseRotationInfo(path, secretKey);
        if (exifInfo != null) {
            return new ExifInfo(exifInfo.rotation, exifInfo.flip, exifInfo.exifOrientation);
        }
        return new ExifInfo();
    }

    private ExifInfo defineExifOrientation(InputStream stream) {
        try {
            ExifInterface exif = (ExifInterface) ExifUtil.sSupportExifCreator.create(stream);
            if (exif != null) {
                return packageExifInfo(exif.getAttributeInt("Orientation", 1));
            }
        } catch (Exception e) {
            L.w("Can't read EXIF tags from stream", new Object[0]);
        }
        return new ExifInfo();
    }

    /* JADX WARNING: Missing block: B:3:0x000a, code:
            return new com.nostra13.universalimageloader.core.decode.BaseImageDecoder.ExifInfo(r1, r0, r4);
     */
    /* JADX WARNING: Missing block: B:5:0x000c, code:
            r1 = 0;
     */
    /* JADX WARNING: Missing block: B:7:0x000f, code:
            r1 = 90;
     */
    /* JADX WARNING: Missing block: B:9:0x0013, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180;
     */
    /* JADX WARNING: Missing block: B:11:0x0017, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private ExifInfo packageExifInfo(int exifOrientation) {
        int rotation = 0;
        boolean flip = false;
        switch (exifOrientation) {
            case 1:
                break;
            case 2:
                flip = true;
                break;
            case 3:
                break;
            case 4:
                flip = true;
                break;
            case 5:
                flip = true;
                break;
            case 6:
                break;
            case 7:
                flip = true;
                break;
            case 8:
                break;
        }
    }

    private boolean usePowerOf2(ImageScaleType scaleType) {
        return scaleType == ImageScaleType.IN_SAMPLE_POWER_OF_2 || scaleType == ImageScaleType.EXACTLY || scaleType == ImageScaleType.EXACTLY_STRETCHED;
    }

    protected Options prepareDecodingOptions(ImageSize imageSize, ImageDecodingInfo decodingInfo) {
        int scale;
        ImageScaleType scaleType = decodingInfo.getImageScaleType();
        if (scaleType == ImageScaleType.NONE) {
            scale = 1;
        } else if (scaleType == ImageScaleType.NONE_SAFE) {
            scale = ImageSizeUtils.computeMinImageSampleSize(imageSize, decodingInfo.getDecodingOptions().inPreferredConfig);
        } else {
            scale = ImageSizeUtils.computeImageSampleSize(imageSize, decodingInfo.getTargetSize(), decodingInfo.getViewScaleType(), usePowerOf2(scaleType));
        }
        if (scale > 1 && this.loggingEnabled) {
            L.d("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", imageSize, imageSize.scaleDown(scale), Integer.valueOf(scale), decodingInfo.getImageKey());
        }
        Options decodingOptions = decodingInfo.getDecodingOptions();
        decodingOptions.inSampleSize = scale;
        if (decodingInfo.getInBitmapCache() != null) {
            Options options = new Options();
            options.outWidth = imageSize.getWidth();
            options.outHeight = imageSize.getHeight();
            options.inSampleSize = decodingOptions.inSampleSize;
            options.inPreferredConfig = decodingOptions.inPreferredConfig;
            decodingOptions.inBitmap = decodingInfo.getInBitmapCache().get(options);
            decodingOptions.inMutable = true;
        }
        return decodingOptions;
    }

    protected InputStream resetStream(InputStream imageStream, ImageDecodingInfo decodingInfo) throws IOException {
        if (imageStream.markSupported()) {
            try {
                imageStream.reset();
                return imageStream;
            } catch (IOException e) {
            }
        }
        IoUtils.closeSilently(imageStream);
        return getImageStream(decodingInfo);
    }

    protected Bitmap considerExactScaleAndOrientation(Bitmap subsampledBitmap, ImageDecodingInfo decodingInfo, int rotation, boolean flipHorizontal) {
        Matrix m = new Matrix();
        boolean shouldMatrix = false;
        ImageScaleType scaleType = decodingInfo.getImageScaleType();
        if (scaleType == ImageScaleType.EXACTLY || scaleType == ImageScaleType.EXACTLY_STRETCHED) {
            float scale = ImageSizeUtils.computeImageScale(new ImageSize(subsampledBitmap.getWidth(), subsampledBitmap.getHeight(), rotation), decodingInfo.getTargetSize(), decodingInfo.getViewScaleType(), scaleType == ImageScaleType.EXACTLY_STRETCHED);
            if (Float.compare(scale, 1.0f) != 0) {
                m.setScale(scale, scale);
                shouldMatrix = true;
                if (this.loggingEnabled) {
                    L.d("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", srcSize, srcSize.scale(scale), Float.valueOf(scale), decodingInfo.getImageKey());
                }
            }
        }
        if (flipHorizontal) {
            m.postScale(-1.0f, 1.0f);
            shouldMatrix = true;
            if (this.loggingEnabled) {
                L.d("Flip image horizontally [%s]", decodingInfo.getImageKey());
            }
        }
        if (rotation != 0) {
            m.postRotate((float) rotation);
            shouldMatrix = true;
            if (this.loggingEnabled) {
                L.d("Rotate image on %1$d° [%2$s]", Integer.valueOf(rotation), decodingInfo.getImageKey());
            }
        }
        if (!shouldMatrix) {
            return subsampledBitmap;
        }
        Bitmap finalBitmap = Bitmap.createBitmap(subsampledBitmap, 0, 0, subsampledBitmap.getWidth(), subsampledBitmap.getHeight(), m, true);
        if (finalBitmap == subsampledBitmap) {
            return finalBitmap;
        }
        if (decodingInfo.getInBitmapCache() != null) {
            decodingInfo.getInBitmapCache().put(subsampledBitmap);
            return finalBitmap;
        }
        subsampledBitmap.recycle();
        return finalBitmap;
    }
}
