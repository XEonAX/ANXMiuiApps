package cn.kuaipan.android.kss.upload;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.kss.IDataFactory;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.kss.KssMaster;
import cn.kuaipan.android.utils.OAuthTimeUtils;
import cn.kuaipan.android.utils.SQLUtility;
import cn.kuaipan.android.utils.SyncAccessor;

public class UploadTaskStore implements KssDef {
    private static volatile Looper sLooper;
    private final SyncAccessor mAccessor = new SyncAccessor(getCommonLooper()) {
        public Object handleAccess(int what, Object... objs) {
            Object result = null;
            switch (what) {
                case 0:
                    UploadTaskStore.this.mDBHelper.update(((Number) objs[0]).intValue(), objs[1], objs[2]);
                    return result;
                case 1:
                    UploadTaskStore.this.mDBHelper.delete(((Number) objs[0]).intValue());
                    return result;
                case 2:
                    return UploadTaskStore.this.mDBHelper.queryPos(((Number) objs[0]).intValue());
                case 3:
                    int hash = ((Number) objs[0]).intValue();
                    UploadTaskStore.this.mDBHelper.deleteBefore(OAuthTimeUtils.currentTime() - 85376000);
                    try {
                        return UploadTaskStore.this.mDBHelper.queryKss(hash, UploadTaskStore.this.mDataFactory);
                    } catch (Throwable t) {
                        Log.w("UploadTaskStore", "Meet exception when parser kss from db", t);
                        return result;
                    }
                default:
                    return super.handleAccess(what, objs);
            }
        }
    };
    private final DBHelper mDBHelper;
    private final IDataFactory mDataFactory;

    private static class DBHelper extends SQLiteOpenHelper {
        private static final String[] QUERY_KSS = new String[]{"kss_request", "kss_file_info", "kss_upload_id", "gen_time"};
        private static final String[] QUERY_POS = new String[]{"chunk_pos", "upload_id"};
        private static final String WHERE_DEL = SQLUtility.getSelectionWithTemplete("%s<?", "gen_time");
        private static final String WHERE_QUERY = SQLUtility.getSelection("task_hash");
        private static volatile DBHelper sInstance;

        public static DBHelper getInstance(Context context) {
            Throwable th;
            DBHelper helper = sInstance;
            if (helper == null) {
                synchronized (DBHelper.class) {
                    try {
                        helper = sInstance;
                        if (helper == null) {
                            if (context == null) {
                                throw new NullPointerException("Context should not be null.");
                            }
                            DBHelper helper2 = new DBHelper(context);
                            try {
                                sInstance = helper2;
                                helper = helper2;
                            } catch (Throwable th2) {
                                th = th2;
                                helper = helper2;
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
            }
            return helper;
        }

        private DBHelper(Context context) {
            super(context, "ksssdk_infos.db", null, 4);
        }

        public void onCreate(SQLiteDatabase db) {
            StringBuilder sb = new StringBuilder();
            sb.append("_id").append(" INTEGER PRIMARY KEY AUTOINCREMENT, ");
            sb.append("task_hash").append(" INTEGER NOT NULL UNIQUE, ");
            sb.append("kss_request").append(" STRING NOT NULL, ");
            sb.append("kss_file_info").append(" STRING NOT NULL, ");
            sb.append("kss_upload_id").append(" STRING NOT NULL, ");
            sb.append("chunk_pos").append(" LONG NOT NULL DEFAULT 0, ");
            sb.append("upload_id").append(" STRING NOT NULL, ");
            sb.append("gen_time").append(" LONG NOT NULL DEFAULT 0");
            SQLUtility.createTable(db, "upload_chunks", sb.toString());
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            if (oldVersion != 4) {
                Log.w("DBHelper", "Destroying all old data.");
                db.execSQL("DROP TABLE IF EXISTS upload_chunks");
                onCreate(db);
            }
        }

        public void deleteBefore(long time) {
            getWritableDatabase().delete("upload_chunks", WHERE_DEL, new String[]{String.valueOf(time)});
        }

        public UploadChunkInfoPersist queryPos(int taskHash) {
            Cursor c = getReadableDatabase().query("upload_chunks", QUERY_POS, WHERE_QUERY, new String[]{String.valueOf(taskHash)}, null, null, null);
            try {
                UploadChunkInfoPersist uploadChunkInfoPersist = new UploadChunkInfoPersist();
                if (c != null && c.moveToFirst()) {
                    long pos = (long) c.getInt(c.getColumnIndex("chunk_pos"));
                    String upload_id = c.getString(c.getColumnIndex("upload_id"));
                    if (!TextUtils.isEmpty(upload_id)) {
                        uploadChunkInfoPersist.pos = pos;
                        uploadChunkInfoPersist.upload_id = upload_id;
                    }
                }
                if (c != null) {
                    c.close();
                }
                return uploadChunkInfoPersist;
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:22:0x0085  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public KssUploadInfo queryKss(int taskHash, IDataFactory dataFactory) throws KscException {
            Throwable th;
            Cursor c = getReadableDatabase().query("upload_chunks", QUERY_KSS, WHERE_QUERY, new String[]{String.valueOf(taskHash)}, null, null, null);
            KssUploadInfo result = null;
            if (c != null) {
                try {
                    if (c.moveToFirst()) {
                        String requestStr = c.getString(c.getColumnIndex("kss_request"));
                        String fileInfoStr = c.getString(c.getColumnIndex("kss_file_info"));
                        long generateTime = c.getLong(c.getColumnIndex("gen_time"));
                        if (!TextUtils.isEmpty(requestStr) && !TextUtils.isEmpty(fileInfoStr)) {
                            KssUploadInfo kssUploadInfo = new KssUploadInfo(new UploadFileInfo(fileInfoStr), dataFactory.createUploadRequestResult(requestStr), generateTime);
                            try {
                                kssUploadInfo.setUploadId(c.getString(c.getColumnIndex("kss_upload_id")));
                                result = kssUploadInfo;
                            } catch (Throwable th2) {
                                th = th2;
                                result = kssUploadInfo;
                                if (c != null) {
                                }
                                throw th;
                            }
                        } else if (c == null) {
                            return null;
                        } else {
                            c.close();
                            return null;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (c != null) {
                        c.close();
                    }
                    throw th;
                }
            }
            if (c != null) {
                c.close();
            }
            return result;
        }

        public void update(int taskHash, KssUploadInfo info, UploadChunkInfoPersist uploadChunkInfoPersist) {
            if (info != null) {
                ContentValues values = new ContentValues();
                values.put("task_hash", Integer.valueOf(taskHash));
                values.put("kss_file_info", info.getFileInfo().toString());
                values.put("kss_request", info.getRequestResult().toString());
                if (TextUtils.isEmpty(info.getUploadId())) {
                    values.put("kss_upload_id", "");
                } else {
                    values.put("kss_upload_id", info.getUploadId());
                }
                values.put("chunk_pos", Long.valueOf(uploadChunkInfoPersist.pos));
                if (TextUtils.isEmpty(uploadChunkInfoPersist.upload_id)) {
                    values.put("upload_id", "");
                } else {
                    values.put("upload_id", uploadChunkInfoPersist.upload_id);
                }
                values.put("gen_time", Long.valueOf(info.getGenerateTime()));
                getWritableDatabase().replace("upload_chunks", null, values);
            }
        }

        public void delete(int taskHash) {
            getWritableDatabase().delete("upload_chunks", WHERE_QUERY, new String[]{String.valueOf(taskHash)});
        }
    }

    public UploadTaskStore(Context context, IDataFactory dataFactory) {
        if (context == null || dataFactory == null) {
            throw new KscRuntimeException(500002, "context and dataFactory can't be null");
        }
        this.mDBHelper = DBHelper.getInstance(context);
        this.mDataFactory = dataFactory;
    }

    public void putUploadInfo(int taskHash, KssUploadInfo uploadInfo) throws InterruptedException {
        this.mAccessor.access(0, Integer.valueOf(taskHash), uploadInfo, new UploadChunkInfoPersist());
    }

    public void removeUploadInfo(int taskHash) throws InterruptedException {
        this.mAccessor.access(1, Integer.valueOf(taskHash));
    }

    public KssUploadInfo getUploadInfo(int taskHash) throws InterruptedException {
        return (KssUploadInfo) this.mAccessor.access(3, Integer.valueOf(taskHash));
    }

    public UploadChunkInfoPersist getUploadPos(int taskHash) throws InterruptedException {
        return (UploadChunkInfoPersist) this.mAccessor.access(2, Integer.valueOf(taskHash));
    }

    public void updateUploadInfo(int taskHash, KssUploadInfo uploadInfo, UploadChunkInfoPersist uploadChunkInfoPersist) {
        this.mDBHelper.update(taskHash, uploadInfo, uploadChunkInfoPersist);
    }

    @SuppressLint({"NewApi"})
    private static Looper getCommonLooper() {
        Looper result = sLooper;
        Thread t = result == null ? null : result.getThread();
        if (t == null || !t.isAlive()) {
            result = null;
        }
        if (result == null) {
            synchronized (KssMaster.class) {
                result = sLooper;
                t = result == null ? null : result.getThread();
                if (t == null || !t.isAlive()) {
                    result = null;
                }
                if (result == null) {
                    HandlerThread ht = new HandlerThread("KssMaster - UploadRecorder", 10);
                    ht.start();
                    result = ht.getLooper();
                }
            }
        }
        return result;
    }
}
