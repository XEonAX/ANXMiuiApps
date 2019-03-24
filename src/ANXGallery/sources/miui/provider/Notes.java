package miui.provider;

import android.content.ContentProviderOperation;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.provider.BaseColumns;
import android.util.Log;
import com.meicam.themehelper.BuildConfig;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

public class Notes {
    public static final String AUTHORITY = "notes";
    public static final String CALLER_IS_SYNCADAPTER = "caller_is_syncadapter";
    private static final String NOTES_PACKAGE_NAME = "com.miui.notes";
    private static final String TAG = "Notes";

    public interface Account extends BaseColumns {
        public static final String ACCOUNT_NAME = "account_name";
        public static final String ACCOUNT_TYPE = "account_type";
        public static final Uri CONTENT_URI = Uri.parse("content://notes/account");
        public static final String DATA = "data";
    }

    public interface Data extends BaseColumns {
        public static final String CONTENT = "content";
        public static final Uri CONTENT_URI = Uri.parse("content://notes/data");
        public static final Uri CONTENT_URI_FOR_SYNC_ADAPTER = Notes.appendSyncAdapterFlag(CONTENT_URI);
        public static final String CREATED_DATE = "created_date";
        public static final String DATA1 = "data1";
        public static final String DATA2 = "data2";
        public static final String DATA3 = "data3";
        public static final String DATA4 = "data4";
        public static final String DATA5 = "data5";
        public static final String DIRTY = "dirty";
        public static final String FILE_ID = "file_id";
        public static final String ID = "_id";
        public static final Uri MEDIA_URI = Uri.parse("content://notes/data/media");
        public static final String MIME_TYPE = "mime_type";
        public static final String MODIFIED_DATE = "modified_date";
        public static final String NOTE_ID = "note_id";
    }

    public interface CallData extends Data {
        public static final String CALL_DATE = "data1";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/call_note";
        public static final String PHONE_NUMBER = "data3";
    }

    public static class Intents {
        public static final String INTENT_ACTION_REFRESH_ALARM = "com.miui.notes.action.REFRESH_ALARM";
        public static final String INTENT_ACTION_REFRESH_WIDGET = "com.miui.notes.action.REFRESH_WIDGET";
        public static final String INTENT_EXTRA_ALERT_DATE = "com.miui.notes.alert_date";
        public static final String INTENT_EXTRA_BACKGROUND_ID = "com.miui.notes.background_color_id";
        public static final String INTENT_EXTRA_CALL_DATE = "com.miui.notes.call_date";
        public static final String INTENT_EXTRA_FOLDER_ID = "com.miui.notes.folder_id";
        public static final String INTENT_EXTRA_SNIPPET = "com.miui.notes.snippet";
        public static final String INTENT_EXTRA_SOURCE_INTENT = "com.miui.notes.source_intent";
        public static final String INTENT_EXTRA_SOURCE_NAME = "com.miui.notes.source_name";
        public static final String INTENT_EXTRA_WIDGET_ID = "com.miui.notes.widget_id";
        public static final String INTENT_EXTRA_WIDGET_TYPE = "com.miui.notes.widget_type";
    }

    public interface Note extends BaseColumns {
        public static final String ACCOUNT_ID = "account_id";
        public static final String ALERTED_DATE = "alert_date";
        public static final String ALERT_TAG = "alert_tag";
        public static final String BG_COLOR_ID = "bg_color_id";
        public static final Uri CONTENT_URI = Uri.parse("content://notes/note");
        public static final Uri CONTENT_URI_ATOMIC = Uri.parse("content://notes/note/atomic");
        public static final Uri CONTENT_URI_FOR_SYNC_ADAPTER = Notes.appendSyncAdapterFlag(CONTENT_URI);
        public static final String CREATED_DATE = "created_date";
        public static final String DELETION_TAG = "deletion_tag";
        public static final String HAS_ATTACHMENT = "has_attachment";
        public static final String ID = "_id";
        public static final int ID_CALL_RECORD_FOLDER = -2;
        public static final int ID_PRIVACY_FOLER = -4;
        public static final int ID_ROOT_FOLDER = 0;
        public static final int ID_TEMPARAY_FOLDER = -1;
        public static final int ID_TRASH_FOLER = -3;
        public static final String IN_VALID_FOLDER_SELECTION = "(parent_id>=0 OR parent_id=-2 OR parent_id=-4)";
        public static final String LOCAL_MODIFIED = "local_modified";
        public static final String MODIFIED_DATE = "modified_date";
        public static final String MOVED_DATE = "moved_date";
        public static final String NOTES_COUNT = "notes_count";
        public static final String ORIGIN_PARENT_ID = "origin_parent_id";
        public static final String PARENT_ID = "parent_id";
        public static final String PLAIN_TEXT = "plain_text";
        public static final String SNIPPET = "snippet";
        public static final String SOURCE_INTENT = "source_intent";
        public static final String SOURCE_NAME = "source_name";
        public static final String SOURCE_PACKAGE = "source_package";
        public static final String STICK_DATE = "stick_date";
        public static final String SUBJECT = "subject";
        public static final String SYNC_DATA1 = "sync_data1";
        public static final String SYNC_DATA2 = "sync_data2";
        public static final String SYNC_DATA3 = "sync_data3";
        public static final String SYNC_DATA4 = "sync_data4";
        public static final String SYNC_DATA5 = "sync_data5";
        public static final String SYNC_DATA6 = "sync_data6";
        public static final String SYNC_DATA7 = "sync_data7";
        public static final String SYNC_DATA8 = "sync_data8";
        public static final String SYNC_ID = "sync_id";
        public static final String SYNC_TAG = "sync_tag";
        public static final String THEME_ID = "theme_id";
        public static final String TYPE = "type";
        public static final int TYPE_FOLDER = 1;
        public static final int TYPE_NOTE = 0;
        public static final int TYPE_SYSTEM = 2;
        public static final int TYPE_WIDGET_INVALIDE = -1;
        public static final int TYPE_WIDGET_SIMPLE = 1;
        public static final String VALID_FOLDER_SELECTION = "((type=1 AND parent_id=0) OR _id=-2)";
        public static final String VERSION = "version";
        public static final String WIDGET_ID = "widget_id";
        public static final String WIDGET_TYPE = "widget_type";
    }

    public interface TextData extends Data {
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/text_note";
    }

    public static final class Utils {
        public static final int CLEAR_ACCOUNT_WIPE_ALL = 0;
        public static final int CLEAR_ACCOUNT_WIPE_NONE = 2;
        public static final int CLEAR_ACCOUNT_WIPE_SYNC = 1;
        private static final int IMAGE_DIMENSION_MAX = 1920;
        private static final String KEY_DATA_BYTES = "data_bytes";
        private static final String KEY_DATA_VALUES = "data_values";

        public static Bitmap createThumbnail(String imgPath) {
            Options opts = new Options();
            Bitmap bitmap = scaleBitmap(imgPath, opts);
            if (bitmap == null) {
                Log.e(Notes.TAG, "Fail to createThumbnail");
                return null;
            }
            bitmap = rotateBitmap(imgPath, bitmap, opts.outMimeType);
            if (bitmap != null) {
                return bitmap;
            }
            Log.e(Notes.TAG, "Fail to rotateBitmap");
            return null;
        }

        private static Bitmap scaleBitmap(String imgPath, Options opts) {
            String str = imgPath;
            Options options = opts;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(imgPath, opts);
            int width = options.outWidth;
            int height = options.outHeight;
            if (width <= 0 || height <= 0) {
                return null;
            }
            Bitmap bitmap;
            Bitmap bitmap2 = null;
            if (width > IMAGE_DIMENSION_MAX || height > IMAGE_DIMENSION_MAX) {
                int sampleSize;
                float scaleRatio = ((float) Math.max(width, height)) / 1920.0f;
                int destWidth = Math.max(1, (int) (((float) width) / scaleRatio));
                int destHeight = Math.max(1, (int) (((float) height) / scaleRatio));
                int sampleRatio = (int) scaleRatio;
                int sampleSize2 = 1;
                while (true) {
                    sampleSize = sampleSize2;
                    if (sampleRatio <= 1) {
                        break;
                    }
                    sampleSize2 = sampleSize << 1;
                    sampleRatio >>= 1;
                }
                if ((width * height) / (sampleSize * sampleSize) > 7372800) {
                    bitmap = scaleBitmapByRegion(str, width, height, destWidth, destHeight, sampleSize);
                } else {
                    bitmap = miui.graphics.BitmapFactory.decodeBitmap(str, destWidth, destHeight, false);
                }
            } else {
                try {
                    bitmap = miui.graphics.BitmapFactory.decodeBitmap(str, false);
                } catch (IOException e) {
                    String str2 = Notes.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Fail to decode ");
                    stringBuilder.append(str);
                    Log.e(str2, stringBuilder.toString(), e);
                }
            }
            bitmap2 = bitmap;
            return bitmap2;
        }

        /* JADX WARNING: Missing block: B:19:0x00b0, code:
            if (r10 != null) goto L_0x0091;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static Bitmap scaleBitmapByRegion(String imgPath, int width, int height, int destWidth, int destHeight, int sampleSize) throws IOException {
            int i = width;
            int i2 = height;
            int i3 = destWidth;
            int i4 = destHeight;
            BitmapRegionDecoder decoder = BitmapRegionDecoder.newInstance(imgPath, false);
            Bitmap bitmap = null;
            Bitmap region = null;
            Canvas canvas = null;
            int centerWidth = i >> 1;
            int centerHeight = i2 >> 1;
            int centerDestWidth = i3 >> 1;
            int centerDestHeight = i4 >> 1;
            try {
                Rect srcRect = new Rect();
                Rect dstRect = new Rect();
                bitmap = Bitmap.createBitmap(i3, i4, Config.ARGB_8888);
                canvas = new Canvas(bitmap);
                Options options = new Options();
                options.inSampleSize = sampleSize;
                srcRect.set(0, 0, centerWidth, centerHeight);
                dstRect.set(0, 0, centerDestWidth, centerDestHeight);
                region = decoder.decodeRegion(srcRect, options);
                canvas.drawBitmap(region, null, dstRect, null);
                region.recycle();
                srcRect.set(centerWidth, 0, i, centerHeight);
                dstRect.set(centerDestWidth, 0, i3, centerDestHeight);
                region = decoder.decodeRegion(srcRect, options);
                canvas.drawBitmap(region, null, dstRect, null);
                region.recycle();
                srcRect.set(0, centerHeight, centerWidth, i2);
                dstRect.set(0, centerDestHeight, centerDestWidth, i4);
                region = decoder.decodeRegion(srcRect, options);
                canvas.drawBitmap(region, null, dstRect, null);
                region.recycle();
                srcRect.set(centerWidth, centerHeight, i, i2);
                dstRect.set(centerDestWidth, centerDestHeight, i3, i4);
                region = decoder.decodeRegion(srcRect, options);
                canvas.drawBitmap(region, null, dstRect, null);
                region.recycle();
                if (decoder != null) {
                    decoder.recycle();
                }
                if (region != null) {
                    region.recycle();
                }
            } catch (OutOfMemoryError e) {
                Log.e(Notes.TAG, "Fail to scaleBitmapByRegion", e);
                if (bitmap != null) {
                    bitmap.recycle();
                    bitmap = null;
                }
                if (decoder != null) {
                    decoder.recycle();
                }
                if (region != null) {
                    region.recycle();
                }
            } catch (Throwable th) {
                if (decoder != null) {
                    decoder.recycle();
                }
                if (region != null) {
                    region.recycle();
                }
                if (canvas != null) {
                    releaseCanvas(canvas);
                }
            }
            releaseCanvas(canvas);
            return bitmap;
        }

        /* JADX WARNING: Missing block: B:29:0x0086, code:
            if (r8 == null) goto L_0x0089;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static Bitmap rotateBitmap(String imgPath, Bitmap bitmap, String mimeType) {
            if (!"image/jpeg".equals(mimeType)) {
                return bitmap;
            }
            try {
                int orientation = new ExifInterface(imgPath).getAttributeInt("Orientation", 1);
                if (orientation == 1) {
                    return bitmap;
                }
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                boolean swapDimension = false;
                Matrix matrix = new Matrix();
                if (orientation == 3) {
                    matrix.postRotate(180.0f, (float) (width / 2), (float) (height / 2));
                } else if (orientation == 6) {
                    matrix.postRotate(90.0f, (float) (height / 2), (float) (height / 2));
                    swapDimension = true;
                } else if (orientation == 8) {
                    matrix.postRotate(270.0f, (float) (width / 2), (float) (width / 2));
                    swapDimension = true;
                }
                if (swapDimension) {
                    int tmp = width;
                    width = height;
                    height = tmp;
                }
                Bitmap result = null;
                Canvas canvas = null;
                try {
                    result = Bitmap.createBitmap(width, height, Config.ARGB_8888);
                    canvas = new Canvas(result);
                    canvas.drawBitmap(bitmap, matrix, null);
                    bitmap.recycle();
                } catch (OutOfMemoryError e) {
                    Log.e(Notes.TAG, "Fail to rotateBitmap", e);
                    bitmap.recycle();
                } catch (Throwable th) {
                    bitmap.recycle();
                    if (canvas != null) {
                        releaseCanvas(canvas);
                    }
                }
                releaseCanvas(canvas);
                return result;
            } catch (IOException e2) {
                Log.e(Notes.TAG, "createThumbnail fail", e2);
                return bitmap;
            }
        }

        private static void releaseCanvas(Canvas canvas) {
            try {
                Method method = Canvas.class.getDeclaredMethod(BuildConfig.BUILD_TYPE, new Class[0]);
                method.setAccessible(true);
                method.invoke(canvas, new Object[0]);
            } catch (Exception e) {
                Log.w(Notes.TAG, "invoke Canvas.release failed", e);
            }
        }

        public static boolean clearAccount(Context context, boolean wipeData) {
            return clearAccount(context, wipeData ? 0 : 2);
        }

        public static boolean clearAccount(Context context, int wipeMode) {
            ArrayList<ContentProviderOperation> ops = new ArrayList();
            ops.add(getAccountDeleteOP());
            switch (wipeMode) {
                case 0:
                    ops.add(getNoteDeleteOP(false));
                    break;
                case 1:
                    ops.add(getNoteDeleteOP(true));
                    break;
                case 2:
                    break;
                default:
                    String str = Notes.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unknown wipeMode: ");
                    stringBuilder.append(wipeMode);
                    Log.w(str, stringBuilder.toString());
                    break;
            }
            ops.add(getTemporaryDeleteOP());
            ops.add(getSyncClearOP());
            ops.add(getDirtyUpdateOP());
            try {
                context.getContentResolver().applyBatch("notes", ops);
                if (wipeMode != 2) {
                    updateAllWidgets(context);
                }
                return true;
            } catch (RemoteException e) {
                Log.e(Notes.TAG, "Fail to clear account", e);
                return false;
            } catch (OperationApplicationException e2) {
                Log.e(Notes.TAG, "Fail to clear account", e2);
                return false;
            }
        }

        private static ContentProviderOperation getAccountDeleteOP() {
            return ContentProviderOperation.newDelete(Account.CONTENT_URI).build();
        }

        private static ContentProviderOperation getNoteDeleteOP(boolean onlyWipeSync) {
            String selection = "_id>0";
            if (onlyWipeSync) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(selection);
                stringBuilder.append(" AND sync_id>0 AND local_modified=0");
                selection = stringBuilder.toString();
            }
            return ContentProviderOperation.newDelete(Note.CONTENT_URI_FOR_SYNC_ADAPTER).withSelection(selection, null).build();
        }

        private static ContentProviderOperation getTemporaryDeleteOP() {
            return ContentProviderOperation.newDelete(Note.CONTENT_URI_FOR_SYNC_ADAPTER).withSelection("not (parent_id>=0 OR parent_id=-2 OR parent_id=-4)", null).build();
        }

        private static ContentProviderOperation getSyncClearOP() {
            ContentValues values = new ContentValues();
            values.put(Note.SYNC_ID, Integer.valueOf(0));
            values.put(Note.SYNC_TAG, "");
            values.put(Note.LOCAL_MODIFIED, Integer.valueOf(1));
            values.put("version", Integer.valueOf(0));
            values.put(Note.ORIGIN_PARENT_ID, Integer.valueOf(0));
            values.put("account_id", Integer.valueOf(0));
            values.put(Note.SYNC_DATA1, Integer.valueOf(0));
            values.put(Note.SYNC_DATA2, Integer.valueOf(0));
            values.put(Note.SYNC_DATA3, Integer.valueOf(0));
            values.put(Note.SYNC_DATA4, Integer.valueOf(0));
            values.put(Note.SYNC_DATA5, Integer.valueOf(0));
            values.put(Note.SYNC_DATA6, "");
            values.put(Note.SYNC_DATA7, "");
            values.put(Note.SYNC_DATA8, "");
            return ContentProviderOperation.newUpdate(Note.CONTENT_URI_FOR_SYNC_ADAPTER).withValues(values).withSelection("_id>0", null).build();
        }

        private static ContentProviderOperation getDirtyUpdateOP() {
            ContentValues values = new ContentValues();
            values.put(Data.DIRTY, Integer.valueOf(1));
            values.put("file_id", "");
            return ContentProviderOperation.newUpdate(Data.CONTENT_URI_FOR_SYNC_ADAPTER).withValues(values).build();
        }

        public static int updateNoteAtomic(Context context, long noteId, ContentValues noteValues, ArrayList<ContentValues> dataValuesList, String selection, String[] selectionArgs) {
            return updateNoteAtomic(context, noteId, noteValues, dataValuesList, selection, selectionArgs, false);
        }

        public static int updateNoteAtomic(Context context, long noteId, ContentValues noteValues, ArrayList<ContentValues> dataValuesList, String selection, String[] selectionArgs, boolean isSyncAdapter) {
            addDataValuesToNoteValues(noteValues, dataValuesList);
            Uri uri = ContentUris.withAppendedId(Note.CONTENT_URI_ATOMIC, noteId);
            if (isSyncAdapter) {
                uri = Notes.appendSyncAdapterFlag(uri);
            }
            return context.getContentResolver().update(uri, noteValues, selection, selectionArgs);
        }

        public static Uri insertNoteAtomic(Context context, ContentValues noteValues, ArrayList<ContentValues> dataValuesList) {
            return insertNoteAtomic(context, noteValues, dataValuesList, false);
        }

        public static Uri insertNoteAtomic(Context context, ContentValues noteValues, ArrayList<ContentValues> dataValuesList, boolean isSyncAdapter) {
            addDataValuesToNoteValues(noteValues, dataValuesList);
            Uri uri = Note.CONTENT_URI_ATOMIC;
            if (isSyncAdapter) {
                uri = Notes.appendSyncAdapterFlag(uri);
            }
            return context.getContentResolver().insert(uri, noteValues);
        }

        private static void addDataValuesToNoteValues(ContentValues noteValues, ArrayList<ContentValues> dataValuesList) {
            if (dataValuesList != null && !dataValuesList.isEmpty()) {
                removeSnippetIfHasDataContent(noteValues, dataValuesList);
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList(KEY_DATA_VALUES, dataValuesList);
                noteValues.put(KEY_DATA_BYTES, marshall(bundle));
            }
        }

        private static void removeSnippetIfHasDataContent(ContentValues noteValues, ArrayList<ContentValues> dataValuesList) {
            if (noteValues.containsKey("snippet")) {
                String dataContent = getContentFromData(dataValuesList);
                if (dataContent != null && dataContent.equals(noteValues.getAsString("snippet"))) {
                    noteValues.put("snippet", (String) null);
                }
            }
        }

        private static String getContentFromData(ArrayList<ContentValues> dataValuesList) {
            Iterator it = dataValuesList.iterator();
            while (it.hasNext()) {
                ContentValues values = (ContentValues) it.next();
                if (values.containsKey(Data.MIME_TYPE) && TextData.CONTENT_ITEM_TYPE.equals(values.getAsString(Data.MIME_TYPE)) && values.containsKey("content")) {
                    return values.getAsString("content");
                }
            }
            return null;
        }

        private static byte[] marshall(Bundle bundle) {
            Parcel parcel = Parcel.obtain();
            try {
                bundle.writeToParcel(parcel, 0);
                byte[] marshall = parcel.marshall();
                return marshall;
            } finally {
                parcel.recycle();
            }
        }

        private static Bundle unmarshall(byte[] data) {
            Parcel parcel = Parcel.obtain();
            try {
                parcel.unmarshall(data, 0, data.length);
                parcel.setDataPosition(0);
                Bundle readBundle = parcel.readBundle();
                return readBundle;
            } finally {
                parcel.recycle();
            }
        }

        public static ArrayList<ContentValues> removeDataValuesFromNoteValues(ContentValues noteValues) {
            byte[] data = noteValues.getAsByteArray(KEY_DATA_BYTES);
            noteValues.remove(KEY_DATA_BYTES);
            if (data == null) {
                return null;
            }
            ArrayList<ContentValues> dataArray = unmarshall(data).getParcelableArrayList(KEY_DATA_VALUES);
            if (noteValues.containsKey("snippet") && noteValues.getAsString("snippet") == null) {
                String dataContent = getContentFromData(dataArray);
                if (dataContent != null) {
                    noteValues.put("snippet", dataContent);
                }
            }
            return dataArray;
        }

        public static void updateAllAlarms(Context context) {
            Intent intent = new Intent(Intents.INTENT_ACTION_REFRESH_ALARM);
            intent.setPackage(Notes.NOTES_PACKAGE_NAME);
            context.sendBroadcast(intent);
        }

        public static void updateAllWidgets(Context context) {
            Intent intent = new Intent(Intents.INTENT_ACTION_REFRESH_WIDGET);
            intent.setPackage(Notes.NOTES_PACKAGE_NAME);
            context.sendBroadcast(intent);
        }

        public static int getTotalUnsyncedCount(Context context) {
            int totalCount = 0;
            for (int count : getUnsyncedCount(context)) {
                totalCount += count;
            }
            return totalCount;
        }

        public static int[] getUnsyncedCount(Context context) {
            int noteCount = 0;
            int folderCount = 0;
            String selection = "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>''))";
            Cursor cursor = context.getContentResolver().query(Note.CONTENT_URI_FOR_SYNC_ADAPTER, new String[]{"_id", "type"}, "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>''))", null, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        int type = cursor.getInt(1);
                        if (type == 0) {
                            noteCount++;
                        } else if (type == 1) {
                            folderCount++;
                        }
                    } finally {
                        cursor.close();
                    }
                }
            } else {
                Log.e(Notes.TAG, "getUnsyncedCount: cursor is null");
            }
            return new int[]{noteCount, folderCount};
        }
    }

    public static Uri appendSyncAdapterFlag(Uri uri) {
        return uri.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
    }
}
