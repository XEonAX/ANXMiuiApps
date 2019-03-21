package com.miui.gallery.sdk.download;

import com.miui.gallery.sdk.download.adapter.IUriAdapter;

public class DownloadOptions {
    private final boolean mInterruptExecuting;
    private final boolean mManual;
    private final boolean mQueueFirst;
    private final boolean mRequireCharging;
    private final boolean mRequireDeviceStorage;
    private final boolean mRequirePower;
    private final boolean mRequireWLAN;
    private final IUriAdapter mUriAdapter;

    public static class Builder {
        private boolean mInterruptExecuting;
        private boolean mManual;
        private boolean mQueueFirst;
        private boolean mRequireCharging;
        private boolean mRequireDeviceStorage;
        private boolean mRequirePower;
        private boolean mRequireWLAN;
        private IUriAdapter mUriAdapter;

        public Builder setUriAdapter(IUriAdapter uriAdapter) {
            this.mUriAdapter = uriAdapter;
            return this;
        }

        public Builder setQueueFirst(boolean queueFirst) {
            this.mQueueFirst = queueFirst;
            return this;
        }

        public Builder setInterruptExecuting(boolean interruptExecuting) {
            this.mInterruptExecuting = interruptExecuting;
            return this;
        }

        public Builder setRequireWLAN(boolean requireWLAN) {
            this.mRequireWLAN = requireWLAN;
            return this;
        }

        public Builder setRequirePower(boolean requirePower) {
            this.mRequirePower = requirePower;
            return this;
        }

        public Builder setRequireCharging(boolean requireCharging) {
            this.mRequireCharging = requireCharging;
            return this;
        }

        public Builder setRequireDeviceStorage(boolean requireDeviceStorage) {
            this.mRequireDeviceStorage = requireDeviceStorage;
            return this;
        }

        public Builder cloneFrom(DownloadOptions options) {
            this.mUriAdapter = options.mUriAdapter;
            this.mQueueFirst = options.mQueueFirst;
            this.mInterruptExecuting = options.mInterruptExecuting;
            this.mRequireWLAN = options.mRequireWLAN;
            this.mRequirePower = options.mRequirePower;
            this.mRequireCharging = options.mRequireCharging;
            this.mRequireDeviceStorage = options.mRequireDeviceStorage;
            this.mManual = options.mManual;
            return this;
        }

        public DownloadOptions build() {
            return new DownloadOptions(this);
        }
    }

    private DownloadOptions(Builder builder) {
        this.mUriAdapter = builder.mUriAdapter;
        this.mQueueFirst = builder.mQueueFirst;
        this.mInterruptExecuting = builder.mInterruptExecuting;
        this.mRequireWLAN = builder.mRequireWLAN;
        this.mRequirePower = builder.mRequirePower;
        this.mRequireCharging = builder.mRequireCharging;
        this.mRequireDeviceStorage = builder.mRequireDeviceStorage;
        this.mManual = builder.mManual;
    }

    public IUriAdapter getUriAdapter() {
        return this.mUriAdapter;
    }

    public boolean isQueueFirst() {
        return this.mQueueFirst;
    }

    public boolean isInterruptExecuting() {
        return this.mInterruptExecuting;
    }

    public boolean isRequireWLAN() {
        return this.mRequireWLAN;
    }

    public boolean isRequirePower() {
        return this.mRequirePower;
    }

    public boolean isRequireCharging() {
        return this.mRequireCharging;
    }

    public boolean isRequireDeviceStorage() {
        return this.mRequireDeviceStorage;
    }

    public boolean isManual() {
        return this.mManual;
    }
}
