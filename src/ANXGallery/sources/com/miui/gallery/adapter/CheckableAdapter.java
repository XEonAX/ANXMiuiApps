package com.miui.gallery.adapter;

import android.view.View;

public interface CheckableAdapter {

    public static class CheckedItem {
        private int mHeight;
        private final long mId;
        private final String mMicroThumbnailFile;
        private final String mMimeType;
        private final String mOriginFile;
        private int mServerType;
        private final String mSha1;
        private long mSize;
        private final String mThumbnailFile;
        private int mWidth;

        protected static class Builder {
            private long mId;
            private String mMicroThumbnailFile;
            private String mMimeType;
            private String mOriginFile;
            private String mSha1;
            private String mThumbnailFile;

            protected Builder() {
            }

            Builder setId(long id) {
                this.mId = id;
                return this;
            }

            Builder setSha1(String sha1) {
                this.mSha1 = sha1;
                return this;
            }

            Builder setMicroThumbnailFile(String microThumbnailFile) {
                this.mMicroThumbnailFile = microThumbnailFile;
                return this;
            }

            Builder setThumbnailFile(String thumbnailFile) {
                this.mThumbnailFile = thumbnailFile;
                return this;
            }

            Builder setOriginFile(String originFile) {
                this.mOriginFile = originFile;
                return this;
            }

            Builder setMimeType(String mimeType) {
                this.mMimeType = mimeType;
                return this;
            }

            CheckedItem build() {
                return new CheckedItem(this);
            }
        }

        private CheckedItem(Builder build) {
            this.mId = build.mId;
            this.mSha1 = build.mSha1;
            this.mMicroThumbnailFile = build.mMicroThumbnailFile;
            this.mThumbnailFile = build.mThumbnailFile;
            this.mOriginFile = build.mOriginFile;
            this.mMimeType = build.mMimeType;
        }

        public long getId() {
            return this.mId;
        }

        public String getSha1() {
            return this.mSha1;
        }

        public String getThumbnailFile() {
            return this.mThumbnailFile;
        }

        public String getOriginFile() {
            return this.mOriginFile;
        }

        public String getMimeType() {
            return this.mMimeType;
        }

        public long getSize() {
            return this.mSize;
        }

        public void setSize(long size) {
            this.mSize = size;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public void setHeight(int height) {
            this.mHeight = height;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public void setWidth(int width) {
            this.mWidth = width;
        }

        public int getServerType() {
            return this.mServerType;
        }

        public void setServerType(int serverType) {
            this.mServerType = serverType;
        }
    }

    View getCheckableView(View view);
}
