package com.miui.gallery.discovery;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.provider.GalleryContract.DiscoveryMessage;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexExportFormat;

public abstract class BaseMessageOperator<SaveParams> {
    protected static Uri sDiscoveryMessageUri = DiscoveryMessage.URI;

    protected static abstract class CRUDTask<T> {
        protected Context mContext;

        protected abstract boolean execute(T t);

        protected abstract T prepareData();

        public CRUDTask(Context context) {
            this.mContext = context;
        }

        protected boolean run() {
            T data = prepareData();
            if (data != null) {
                return execute(data);
            }
            Log.e("BaseMessageOperator", "Can't execute task when prepared data was null");
            return false;
        }
    }

    protected static class InsertTask extends CRUDTask<ContentValues> {
        protected ContentValues mContentValues;

        public InsertTask(Context context, ContentValues values) {
            super(context);
            this.mContentValues = values;
        }

        protected boolean execute(ContentValues values) {
            return doInsert(values);
        }

        private boolean doInsert(ContentValues values) {
            return this.mContext.getContentResolver().insert(BaseMessageOperator.sDiscoveryMessageUri, values) != null;
        }

        protected ContentValues prepareData() {
            return this.mContentValues;
        }
    }

    protected static class UpdateTask extends CRUDTask<ContentValues> {
        ContentValues mContentValues;
        com.miui.gallery.model.DiscoveryMessage mMessage;

        public UpdateTask(Context context, com.miui.gallery.model.DiscoveryMessage message, ContentValues values) {
            super(context);
            this.mMessage = message;
            this.mContentValues = values;
        }

        protected String getWhereClause() {
            return "_id = ?";
        }

        protected String[] getWhereArgs() {
            if (this.mMessage == null) {
                return new String[]{String.valueOf(this.mContentValues.get("_id"))};
            }
            return new String[]{String.valueOf(this.mMessage.getMessageId())};
        }

        protected boolean execute(ContentValues values) {
            return this.mContext.getContentResolver().update(BaseMessageOperator.sDiscoveryMessageUri, values, getWhereClause(), getWhereArgs()) > 0;
        }

        protected ContentValues prepareData() {
            if (this.mContentValues == null) {
                this.mContentValues = new ContentValues();
                this.mContentValues.put(nexExportFormat.TAG_FORMAT_TYPE, Integer.valueOf(this.mMessage.getType()));
                this.mContentValues.put("receiveTime", Long.valueOf(this.mMessage.getReceiveTime()));
                this.mContentValues.put("updateTime", Long.valueOf(this.mMessage.getUpdateTime()));
                this.mContentValues.put("extraData", this.mMessage.getMessageDetail().toJson());
                this.mContentValues.put("triggerTime", Long.valueOf(this.mMessage.getTriggerTime()));
                this.mContentValues.put("isConsumed", Boolean.valueOf(this.mMessage.isConsumed()));
                this.mContentValues.put("expireTime", Long.valueOf(this.mMessage.getExpireTime()));
                this.mContentValues.put("actionUri", this.mMessage.getActionUri());
                this.mContentValues.put("messageSource", this.mMessage.getMessageSource());
                this.mContentValues.put("priority", Integer.valueOf(this.mMessage.getPriority()));
                this.mContentValues.put("subTitle", this.mMessage.getSubTitle());
                this.mContentValues.put("title", this.mMessage.getTitle());
                this.mContentValues.put("message", this.mMessage.getMessage());
            }
            return this.mContentValues;
        }
    }

    protected abstract boolean doMarkMessageAsRead(Context context, com.miui.gallery.model.DiscoveryMessage discoveryMessage);

    protected abstract boolean doSaveMessage(Context context, SaveParams saveParams);

    protected abstract void doWrapMessage(com.miui.gallery.model.DiscoveryMessage discoveryMessage, String str);

    public abstract int getMessageType();

    public void wrapMessage(com.miui.gallery.model.DiscoveryMessage message, String extraDataJson) {
        if (message != null && extraDataJson != null) {
            doWrapMessage(message, extraDataJson);
        }
    }

    public boolean markMessageAsRead(Context context, com.miui.gallery.model.DiscoveryMessage message) {
        return doMarkMessageAsRead(context, message);
    }

    protected Cursor queryMessageByType(Context context) {
        return context.getContentResolver().query(sDiscoveryMessageUri, null, "type = ?", new String[]{String.valueOf(getMessageType())}, null);
    }

    public boolean saveMessage(Context context, SaveParams saveParams) {
        return doSaveMessage(context, saveParams);
    }

    protected boolean doUpdateMessage(Context context, com.miui.gallery.model.DiscoveryMessage message) {
        return new UpdateTask(context, message, null).run();
    }
}
