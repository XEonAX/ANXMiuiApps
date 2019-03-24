package com.miui.gallery.provider;

import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.support.media.ExifInterface;
import android.text.TextUtils;
import com.miui.gallery.data.LocationUtil;
import com.miui.gallery.scanner.SaveToCloudUtil;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.VideoAttrsReader;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import miui.provider.Notes.Data;
import miui.util.PlayerActions.Out;
import miui.yellowpage.YellowPageContract.ImageLookup;
import miui.yellowpage.YellowPageStatistic.Display;

public class GalleryOpenProvider extends ContentProvider {
    private static final String[] CLOUD_COLUMNS = new String[]{"_id", "serverType", "exifGPSLatitude", "exifGPSLatitudeRef", "exifGPSLongitude", "exifGPSLongitudeRef", "dateTaken", "exifOrientation", "localGroupId", "microthumbfile", "thumbnailFile", "localFile", "size", "fileName", "title", "dateModified", "mimeType", "exifImageWidth", "exifImageLength", "duration"};
    private static final String[] MEDIA_COLUMNS = new String[]{"_id", "_data", "_size", "_display_name", "title", "date_added", "date_modified", Data.MIME_TYPE, "width", nexExportFormat.TAG_FORMAT_HEIGHT, "description", "picasa_id", "isprivate", "latitude", "longitude", "datetaken", "orientation", "mini_thumb_magic", "bucket_id", "bucket_display_name", "bookmark", Out.KEY_ALBUM, Out.KEY_ARTIST, Display.CATEGORY, "duration", "language", "resolution", "tags", "mini_thumb_data", "media_type"};
    private static final String[] NEED_RETURN_CONTENT_URI_SYSTEM_APPS = new String[]{"com.android.bluetooth"};
    private static final String[] PRIVACY_COLUMNS = new String[]{"latitude", "longitude"};
    private static final String TAG = GalleryOpenProvider.class.getSimpleName();
    private SQLiteDatabase mCacheDB;
    private SQLiteDatabase mDatabase;
    private UriMatcher mUriMatcher = new UriMatcher(-1);

    private class MediaInfo {
        String mAlbumName;
        long mBucketId;
        String mBucketName;
        Long mDateModified;
        Long mDateTaken;
        Long mDuration;
        String mFileName;
        Integer mHeight;
        long mId;
        Double mLatitude;
        Double mLongitude;
        String mMimeType;
        Integer mOrientation;
        String mPath;
        String mResolution;
        Long mSize;
        String mTitle;
        int mType;
        Integer mWidth;

        private MediaInfo() {
        }

        boolean init(String path) {
            Log.d(GalleryOpenProvider.TAG, "query media info for file: %s", (Object) path);
            File file = new File(path);
            if (!file.exists()) {
                return false;
            }
            this.mId = Long.MAX_VALUE;
            this.mMimeType = BaseFileMimeUtil.getMimeType(path);
            if (!(BaseFileMimeUtil.isImageFromMimeType(this.mMimeType) || BaseFileMimeUtil.isVideoFromMimeType(this.mMimeType))) {
                this.mMimeType = BaseFileMimeUtil.getMimeTypeByParseFile(path);
                if (!(BaseFileMimeUtil.isImageFromMimeType(this.mMimeType) || BaseFileMimeUtil.isVideoFromMimeType(this.mMimeType))) {
                    return false;
                }
            }
            this.mType = BaseFileMimeUtil.isImageFromMimeType(this.mMimeType) ? 1 : 2;
            this.mBucketId = Long.MAX_VALUE;
            this.mBucketName = file.getParentFile().getName();
            this.mPath = path;
            this.mSize = Long.valueOf(file.length());
            this.mFileName = file.getName();
            this.mTitle = FileUtils.getFileTitle(this.mFileName);
            this.mDateModified = Long.valueOf(file.lastModified());
            if (this.mType != 1) {
                Log.d(GalleryOpenProvider.TAG, "is video, reading video info");
                this.mAlbumName = this.mBucketName;
                try {
                    VideoAttrsReader reader = VideoAttrsReader.read(path);
                    String title = reader.getTitle();
                    if (title != null) {
                        this.mTitle = title;
                    }
                    this.mDateTaken = Long.valueOf(reader.getDateTaken());
                    this.mDuration = Long.valueOf(reader.getDuration());
                    this.mWidth = Integer.valueOf(reader.getVideoWidth());
                    this.mHeight = Integer.valueOf(reader.getVideoHeight());
                    this.mResolution = this.mWidth + "x" + this.mHeight;
                    return true;
                } catch (Throwable e) {
                    Log.w(GalleryOpenProvider.TAG, e);
                    return true;
                }
            } else if (BaseFileMimeUtil.hasExif(path)) {
                Log.d(GalleryOpenProvider.TAG, "reading exif");
                ExifInterface exif = (ExifInterface) ExifUtil.sSupportExifCreator.create(path);
                if (exif == null) {
                    Log.e(GalleryOpenProvider.TAG, "Failed to read exif for path %s", (Object) path);
                    return true;
                }
                double[] latLong = exif.getLatLong();
                if (latLong != null) {
                    this.mLatitude = Double.valueOf(latLong[0]);
                    this.mLongitude = Double.valueOf(latLong[1]);
                }
                this.mOrientation = Integer.valueOf(ExifUtil.getRotationDegrees(exif));
                this.mDateTaken = Long.valueOf(SaveToCloudUtil.getDateTaken(exif, this.mDateModified.longValue()));
                this.mWidth = Integer.valueOf(exif.getAttributeInt("ImageWidth", 0));
                this.mHeight = Integer.valueOf(exif.getAttributeInt("ImageLength", 0));
                if (this.mWidth.intValue() > 0 && this.mHeight.intValue() > 0) {
                    return true;
                }
                decodeBounds(path);
                return true;
            } else {
                Log.d(GalleryOpenProvider.TAG, "no exif found");
                decodeBounds(path);
                this.mOrientation = Integer.valueOf(0);
                this.mDateTaken = this.mDateModified;
                return true;
            }
        }

        boolean init(Cursor cursor) {
            this.mId = cursor.getLong(0);
            int type = cursor.getInt(1);
            if (type == 1) {
                this.mType = 1;
            } else if (type == 2) {
                this.mType = 2;
            } else {
                Log.e(GalleryOpenProvider.TAG, "%d is not a media type", Integer.valueOf(type));
                return false;
            }
            String rawLat = cursor.getString(2);
            String refLat = cursor.getString(3);
            if (!(rawLat == null || refLat == null)) {
                this.mLatitude = Double.valueOf(LocationUtil.convertRationalLatLonToDouble(rawLat, refLat));
            }
            String rawLon = cursor.getString(4);
            String refLon = cursor.getString(5);
            if (!(rawLon == null || refLon == null)) {
                this.mLongitude = Double.valueOf(LocationUtil.convertRationalLatLonToDouble(rawLon, refLon));
            }
            this.mDateTaken = Numbers.getLong(cursor, 6);
            this.mBucketId = cursor.getLong(8);
            this.mFileName = cursor.getString(13);
            this.mTitle = cursor.getString(14);
            this.mDateModified = Long.valueOf(cursor.getLong(15));
            this.mMimeType = cursor.getString(16);
            Cursor album = GalleryOpenProvider.this.mDatabase.query("cloud", new String[]{"fileName"}, "_id=?", new String[]{Long.toString(this.mBucketId)}, null, null, null);
            try {
                if (album.moveToNext()) {
                    this.mBucketName = album.getString(0);
                }
                album.close();
                if (this.mType == 2) {
                    this.mDuration = Long.valueOf(cursor.getLong(19));
                }
                CharSequence string = cursor.getString(11);
                this.mPath = string;
                if (!TextUtils.isEmpty(string)) {
                    this.mSize = Long.valueOf(cursor.getLong(12));
                    this.mWidth = Integer.valueOf(cursor.getInt(17));
                    this.mHeight = Integer.valueOf(cursor.getInt(18));
                    if (!cursor.isNull(7)) {
                        this.mOrientation = Integer.valueOf(ExifUtil.exifOrientationToDegrees(cursor.getShort(7)));
                    }
                    if (this.mType == 2) {
                        this.mResolution = this.mWidth + "x" + this.mHeight;
                        this.mAlbumName = this.mBucketName;
                    }
                    return true;
                } else if (this.mType == 2) {
                    Log.e(GalleryOpenProvider.TAG, "current type is video, but no file path");
                    return false;
                } else {
                    string = cursor.getString(10);
                    this.mPath = string;
                    if (TextUtils.isEmpty(string)) {
                        string = cursor.getString(9);
                        this.mPath = string;
                        if (TextUtils.isEmpty(string)) {
                            Log.e(GalleryOpenProvider.TAG, "no path return");
                            return false;
                        }
                    }
                    return fillByFile(this.mPath);
                }
            } catch (Throwable th) {
                album.close();
            }
        }

        boolean fillByFile(String path) {
            Log.d(GalleryOpenProvider.TAG, "try fill with %s", (Object) path);
            this.mPath = path;
            if (new File(path).exists()) {
                this.mSize = Long.valueOf(new File(this.mPath).length());
                this.mOrientation = Integer.valueOf(0);
                decodeBounds(path);
                return true;
            }
            Log.e(GalleryOpenProvider.TAG, "file not exists");
            return false;
        }

        private void decodeBounds(String path) {
            Options opt = new Options();
            opt.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(this.mPath, opt);
            this.mWidth = Integer.valueOf(opt.outWidth);
            this.mHeight = Integer.valueOf(opt.outHeight);
        }

        ContentValues toContentValue() {
            ContentValues values = new ContentValues(GalleryOpenProvider.MEDIA_COLUMNS.length);
            for (int i = 0; i < GalleryOpenProvider.MEDIA_COLUMNS.length; i++) {
                String column = GalleryOpenProvider.MEDIA_COLUMNS[i];
                switch (i) {
                    case 1:
                        values.put(column, this.mPath);
                        break;
                    case 2:
                        values.put(column, this.mSize);
                        break;
                    case 3:
                        values.put(column, this.mFileName);
                        break;
                    case 4:
                        values.put(column, this.mTitle);
                        break;
                    case 5:
                        values.put(column, this.mDateTaken);
                        break;
                    case 6:
                        values.put(column, this.mDateModified);
                        break;
                    case 7:
                        values.put(column, this.mMimeType);
                        break;
                    case 8:
                        values.put(column, this.mWidth);
                        break;
                    case 9:
                        values.put(column, this.mHeight);
                        break;
                    case 13:
                        values.put(column, this.mLatitude);
                        break;
                    case 14:
                        values.put(column, this.mLongitude);
                        break;
                    case 15:
                        values.put(column, this.mDateTaken);
                        break;
                    case 16:
                        values.put(column, this.mOrientation);
                        break;
                    case 18:
                        values.put(column, Long.valueOf(this.mBucketId));
                        break;
                    case 19:
                        values.put(column, this.mBucketName);
                        break;
                    case 21:
                        values.put(column, this.mAlbumName);
                        break;
                    case 24:
                        values.put(column, this.mDuration);
                        break;
                    case 26:
                        values.put(column, this.mResolution);
                        break;
                    case 29:
                        values.put(column, Integer.valueOf(this.mType));
                        break;
                    default:
                        values.putNull(column);
                        break;
                }
            }
            Log.d(GalleryOpenProvider.TAG, "trans cursor to %s", GalleryOpenProvider.filterPrivateColumns(values));
            return values;
        }

        public String toString() {
            return "MediaInfo{mId=" + this.mId + ", mType=" + this.mType + ", mDateTaken=" + this.mDateTaken + ", mOrientation=" + this.mOrientation + ", mBucketId=" + this.mBucketId + ", mBucketName='" + this.mBucketName + '\'' + ", mPath='" + this.mPath + '\'' + ", mSize=" + this.mSize + ", mFileName='" + this.mFileName + '\'' + ", mTitle='" + this.mTitle + '\'' + ", mDateModified=" + this.mDateModified + ", mMimeType='" + this.mMimeType + '\'' + ", mWidth=" + this.mWidth + ", mHeight=" + this.mHeight + ", mDuration=" + this.mDuration + ", mAlbumName='" + this.mAlbumName + '\'' + ", mResolution='" + this.mResolution + '\'' + '}';
        }
    }

    public boolean onCreate() {
        initialize();
        return true;
    }

    private void initialize() {
        this.mUriMatcher.addURI("com.miui.gallery.open", "raw/*", 1);
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Log.d(TAG, "query uri: %s, %s, %s", uri, Arrays.toString(projection), selection);
        synchronized (this) {
            if (this.mCacheDB == null) {
                this.mCacheDB = prepareDB();
            }
        }
        MediaInfo info = query(uri);
        if (info == null) {
            Log.e(TAG, "query failed, return a empty");
            return new MatrixCursor(projection);
        }
        long id = this.mCacheDB.insertWithOnConflict("media", null, info.toContentValue(), 5);
        if (id > 0) {
            String table;
            Log.d(TAG, "insert cache success: %d", Long.valueOf(id));
            if (info.mType == 1) {
                table = ImageLookup.DIRECTORY_IMAGE;
            } else {
                table = "video";
            }
            return this.mCacheDB.query(table, projection, "_id=?", new String[]{Long.toString(id)}, null, null, null);
        }
        Log.e(TAG, "insert failed, return null");
        return new MatrixCursor(projection);
    }

    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    public String getType(Uri uri) {
        Log.d(TAG, "query type for %s", (Object) uri);
        MediaInfo info = query(uri);
        if (info != null) {
            return info.mMimeType;
        }
        Log.e(TAG, "query type for %s failed.", (Object) uri);
        return "*/*";
    }

    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        Log.d(TAG, "open file for: %s", uri.toString());
        File file = new File(uri.getLastPathSegment());
        if (file.exists()) {
            return ParcelFileDescriptor.open(file, 268435456);
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    private MediaInfo query(Uri uri) {
        Cursor cursor;
        if (this.mDatabase == null) {
            this.mDatabase = GalleryDBHelper.getInstance().getReadableDatabase();
        }
        String path = uri.getLastPathSegment();
        switch (this.mUriMatcher.match(uri)) {
            case 1:
                Log.d(TAG, "internal query for file: %s", (Object) path);
                cursor = this.mDatabase.query("cloud", CLOUD_COLUMNS, "microthumbfile=? OR thumbnailFile = ? OR localFile = ?", new String[]{path, path, path}, null, null, null);
                break;
            default:
                cursor = null;
                break;
        }
        try {
            Object info = new MediaInfo();
            if (cursor != null && cursor.moveToNext() && info.init(cursor)) {
                Log.d(TAG, "translate cursor to MediaInfo success: %s", info);
                return info;
            } else if (info.init(path)) {
                Log.d(TAG, "translate file to MediaInfo success: %s", info);
                if (cursor == null) {
                    return info;
                }
                cursor.close();
                return info;
            } else {
                Log.d(TAG, "translate into MediaInfo failed: %s", (Object) uri);
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private static ContentValues filterPrivateColumns(ContentValues values) {
        ContentValues filterValues = new ContentValues(values);
        for (String column : PRIVACY_COLUMNS) {
            filterValues.remove(column);
        }
        return filterValues;
    }

    private static SQLiteDatabase prepareDB() {
        SQLiteDatabase db = SQLiteDatabase.create(null);
        db.execSQL("CREATE TABLE media (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT UNIQUE COLLATE NOCASE,_size INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,description TEXT,_display_name TEXT,picasa_id TEXT,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,isprivate INTEGER,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,resolution TEXT,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,media_type INTEGER,width INTEGER,height INTEGER)");
        db.execSQL("CREATE VIEW image AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height FROM media WHERE media_type=1");
        db.execSQL("CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height FROM media WHERE media_type=2");
        return db;
    }

    public static Uri translateToContent(String path) {
        return Uri.parse("content://com.miui.gallery.open/raw").buildUpon().appendPath(path).build();
    }

    public static boolean needReturnContentUri() {
        return VERSION.SDK_INT >= 24;
    }

    public static boolean needReturnContentUri(Context context, String packageName) {
        return needReturnContentUri() || isNeedReturnContentUriApp(context, packageName);
    }

    public static boolean needReturnContentUri(Context context, Intent intent) {
        if (needReturnContentUri()) {
            return true;
        }
        String packageName = intent.getPackage();
        if (TextUtils.isEmpty(packageName)) {
            ComponentName componentName = intent.getComponent();
            if (componentName != null) {
                packageName = componentName.getPackageName();
            }
        }
        if (!TextUtils.isEmpty(packageName)) {
            return isNeedReturnContentUriApp(context, packageName);
        }
        throw new IllegalArgumentException("no packageName assigned to intent");
    }

    private static boolean isNeedReturnContentUriApp(Context context, String packageName) {
        if (!isSystemApp(context, packageName)) {
            return true;
        }
        for (String pkg : NEED_RETURN_CONTENT_URI_SYSTEM_APPS) {
            if (pkg.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isSystemApp(Context context, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            Log.i(TAG, "no package name");
            return false;
        }
        try {
            boolean isSystem;
            ApplicationInfo info = context.getPackageManager().getApplicationInfo(packageName, 0);
            if (info == null || (info.flags & 1) == 0) {
                isSystem = false;
            } else {
                isSystem = true;
            }
            if (isSystem) {
                Log.i(TAG, "system app: %s", (Object) packageName);
                return true;
            }
        } catch (Throwable e) {
            Log.w(TAG, e);
        }
        Log.i(TAG, "data app: %s", (Object) packageName);
        return false;
    }
}
