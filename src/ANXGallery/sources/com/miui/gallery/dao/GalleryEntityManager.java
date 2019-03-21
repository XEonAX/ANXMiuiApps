package com.miui.gallery.dao;

import android.database.sqlite.SQLiteDatabase;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.library.Library;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.SyncTag;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.model.PersistentResponse;
import com.miui.gallery.pendingtask.base.PendingTaskInfo;
import com.miui.gallery.provider.cloudmanager.MediaRemarkInfo;
import com.miui.gallery.provider.peoplecover.PeopleCover;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.deleterecorder.DeleteRecord;

public class GalleryEntityManager extends EntityManager {
    private static GalleryEntityManager instance;

    private GalleryEntityManager() {
        super(GalleryApp.sGetAndroidContext(), "gallery_sub.db", 9);
    }

    public static synchronized GalleryEntityManager getInstance() {
        GalleryEntityManager galleryEntityManager;
        synchronized (GalleryEntityManager.class) {
            if (instance == null) {
                instance = new GalleryEntityManager();
            }
            galleryEntityManager = instance;
        }
        return galleryEntityManager;
    }

    protected void onInitTableList() {
        addTable(Card.class);
        addTable(PendingTaskInfo.class);
        addTable(PersistentResponse.class);
        addTable(MediaRemarkInfo.class);
        addTable(PeopleCover.class);
        addTable(DeleteRecord.class);
        addTable(Record.class);
        addTable(ImageFeature.class);
        addTable(Library.class);
        addTable(SyncTag.class);
    }

    protected void onDatabaseUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion == 7) {
            db.execSQL(" UPDATE " + Card.class.getSimpleName() + " SET " + "localFlag" + " = " + 0 + ", " + "updateTime" + " = " + "createTime" + ", " + "createdBy" + " = " + 0);
        }
    }

    protected void onDatabaseDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.w("GalleryEntityManager", "onDatabaseDowngrade from %s to %s", Integer.valueOf(oldVersion), Integer.valueOf(newVersion));
    }
}
