package com.xiaomi.push.service;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ThreadUtils;
import com.xiaomi.push.service.module.GeoFenceMessage;
import java.util.ArrayList;
import java.util.Iterator;

public class GeoFenceMessageDao {
    private static volatile GeoFenceMessageDao sInstance;
    private Context mContext;

    private GeoFenceMessageDao(Context context) {
        this.mContext = context;
    }

    public static GeoFenceMessageDao getInstance(Context context) {
        if (sInstance == null) {
            synchronized (GeoFenceMessageDao.class) {
                if (sInstance == null) {
                    sInstance = new GeoFenceMessageDao(context);
                }
            }
        }
        return sInstance;
    }

    public synchronized boolean insertGeoMessages(ArrayList<ContentValues> messages) {
        boolean result;
        ThreadUtils.checkNotUIThread(false);
        if (messages == null || messages.size() <= 0) {
            result = false;
        } else {
            result = true;
            try {
                SQLiteDatabase db = GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase();
                db.beginTransaction();
                Iterator it = messages.iterator();
                while (it.hasNext()) {
                    if (-1 == db.insert("geoMessage", null, (ContentValues) it.next())) {
                        result = false;
                        break;
                    }
                }
                if (result) {
                    db.setTransactionSuccessful();
                }
                db.endTransaction();
                GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
            } catch (Exception e) {
                MyLog.e(e.toString());
                result = false;
            }
        }
        return result;
    }

    public synchronized int deleteGeoMessagesByMessageId(String messageId) {
        int result;
        ThreadUtils.checkNotUIThread(false);
        if (TextUtils.isEmpty(messageId)) {
            result = 0;
        } else {
            try {
                result = GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase().delete("geoMessage", "message_id = ?", new String[]{messageId});
                GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
            } catch (Exception e) {
                MyLog.e(e.toString());
                result = 0;
            }
        }
        return result;
    }

    public synchronized int deleteGeoMessageByGeoId(String geoId) {
        int result;
        ThreadUtils.checkNotUIThread(false);
        if (TextUtils.isEmpty(geoId)) {
            result = 0;
        } else {
            try {
                result = GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase().delete("geoMessage", "geo_id = ?", new String[]{geoId});
                GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
            } catch (Exception e) {
                MyLog.e(e.toString());
                result = 0;
            }
        }
        return result;
    }

    public synchronized ArrayList<GeoFenceMessage> canShownGeoMessage(String geoId) {
        ArrayList<GeoFenceMessage> messages;
        ThreadUtils.checkNotUIThread(false);
        if (TextUtils.isEmpty(geoId)) {
            messages = null;
        } else {
            try {
                ArrayList<GeoFenceMessage> allGeoMessages = findAllGeoFencingMessage();
                messages = new ArrayList();
                Iterator it = allGeoMessages.iterator();
                while (it.hasNext()) {
                    GeoFenceMessage message = (GeoFenceMessage) it.next();
                    if (TextUtils.equals(message.getGeoId(), geoId)) {
                        messages.add(message);
                    }
                }
            } catch (Exception e) {
                MyLog.e(e.toString());
                messages = null;
            }
        }
        return messages;
    }

    public synchronized ArrayList<GeoFenceMessage> findAllGeoFencingMessage() {
        ArrayList<GeoFenceMessage> arrayList;
        ThreadUtils.checkNotUIThread(false);
        try {
            Cursor c = queryTheCursor(GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase());
            arrayList = new ArrayList();
            if (c != null) {
                while (c.moveToNext()) {
                    GeoFenceMessage messageTemp = new GeoFenceMessage();
                    messageTemp.setMessageId(c.getString(c.getColumnIndex("message_id")));
                    messageTemp.setGeoId(c.getString(c.getColumnIndex("geo_id")));
                    messageTemp.setContent(c.getBlob(c.getColumnIndex("content")));
                    messageTemp.setAction(c.getInt(c.getColumnIndex("action")));
                    messageTemp.setDeadline(c.getLong(c.getColumnIndex("deadline")));
                    arrayList.add(messageTemp);
                }
                c.close();
            }
            GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
        } catch (Exception e) {
            MyLog.e(e.toString());
            arrayList = null;
        }
        return arrayList;
    }

    private synchronized Cursor queryTheCursor(SQLiteDatabase db) {
        Cursor query;
        ThreadUtils.checkNotUIThread(false);
        try {
            query = db.query("geoMessage", null, null, null, null, null, null);
        } catch (Exception e) {
            MyLog.e(e.toString());
            query = null;
        }
        return query;
    }
}
