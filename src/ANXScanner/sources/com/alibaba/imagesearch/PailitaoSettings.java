package com.alibaba.imagesearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ViewCompat;
import com.alibaba.baichuan.android.trade.AlibcTradeSDK;
import com.alibaba.baichuan.android.trade.a;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.imagesearch.utils.PLog;

public class PailitaoSettings implements Parcelable {
    public static final Creator<PailitaoSettings> CREATOR = new Creator<PailitaoSettings>() {
        /* renamed from: a */
        public PailitaoSettings createFromParcel(Parcel parcel) {
            return new PailitaoSettings(parcel);
        }

        /* renamed from: a */
        public PailitaoSettings[] newArray(int i) {
            return new PailitaoSettings[i];
        }
    };
    public static final int OPEN_TYPE_H5 = 2;
    public static final int OPEN_TYPE_NATIVE = 1;
    private String a;
    public String brand;
    public boolean cpsOnly;
    public boolean enableFullscreenLoadingPage;
    public boolean enableRefreshButton;
    public boolean enableWhiteStatusBar;
    public boolean forceHttps;
    public int loadingPageBGColor;
    public boolean logEnabled;
    public boolean notInCN;
    public int openType;
    public int statusBarColor;
    public String vendorId;

    public PailitaoSettings() {
        this.cpsOnly = false;
        this.forceHttps = false;
        this.enableRefreshButton = false;
        this.enableWhiteStatusBar = false;
        this.statusBarColor = -789517;
        this.loadingPageBGColor = ViewCompat.MEASURED_STATE_MASK;
        this.enableFullscreenLoadingPage = false;
        this.openType = 256;
    }

    protected PailitaoSettings(Parcel parcel) {
        boolean z = true;
        this.cpsOnly = false;
        this.forceHttps = false;
        this.enableRefreshButton = false;
        this.enableWhiteStatusBar = false;
        this.statusBarColor = -789517;
        this.loadingPageBGColor = ViewCompat.MEASURED_STATE_MASK;
        this.enableFullscreenLoadingPage = false;
        this.a = parcel.readString();
        this.vendorId = parcel.readString();
        this.brand = parcel.readString();
        this.openType = parcel.readInt();
        this.logEnabled = parcel.readInt() == 1;
        this.notInCN = parcel.readInt() == 1;
        this.cpsOnly = parcel.readInt() == 1;
        this.forceHttps = parcel.readInt() == 1;
        this.enableRefreshButton = parcel.readInt() == 1;
        this.enableWhiteStatusBar = parcel.readInt() == 1;
        this.statusBarColor = parcel.readInt();
        this.loadingPageBGColor = parcel.readInt();
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.enableFullscreenLoadingPage = z;
    }

    public static PailitaoSettings defaultSettings() {
        PailitaoSettings pailitaoSettings = new PailitaoSettings();
        pailitaoSettings.openType = 256;
        return pailitaoSettings;
    }

    public int describeContents() {
        return 0;
    }

    public String getBrand() {
        return this.brand == null ? "" : this.brand;
    }

    public int getOpenType() {
        return this.openType;
    }

    public String getTaokePid() {
        return this.a == null ? "" : this.a;
    }

    public String getVendorId() {
        return this.vendorId == null ? "" : this.vendorId;
    }

    public void setTaokePid(String str) {
        this.a = str;
        if (AlibcTradeSDK.initState.isInitialized()) {
            PLog.d("AlibcTradeSDK is initialized. update taokePid : " + str);
            AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
            alibcTaokeParams.setPid(this.a);
            a.setTaokeParams(alibcTaokeParams);
        }
    }

    public String toString() {
        return "taokePid = " + this.a + " vendorId = " + this.vendorId + " brand = " + this.brand + " notInCN = " + this.notInCN + " logEnabled = " + this.logEnabled + " notInCN = " + this.notInCN + " cpsOnly = " + this.cpsOnly + " forceHttps = " + this.forceHttps + " enableRefreshButton = " + this.enableRefreshButton + " enableWhiteStatusBar = " + this.enableWhiteStatusBar + " sdkVersion = " + Pailitao.VERSION;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeString(this.a);
        parcel.writeString(this.vendorId);
        parcel.writeString(this.brand);
        parcel.writeInt(this.openType);
        parcel.writeInt(this.logEnabled ? 1 : 0);
        parcel.writeInt(this.notInCN ? 1 : 0);
        parcel.writeInt(this.cpsOnly ? 1 : 0);
        parcel.writeInt(this.forceHttps ? 1 : 0);
        parcel.writeInt(this.enableRefreshButton ? 1 : 0);
        parcel.writeInt(this.enableWhiteStatusBar ? 1 : 0);
        parcel.writeInt(this.statusBarColor);
        parcel.writeInt(this.loadingPageBGColor);
        if (!this.enableFullscreenLoadingPage) {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }
}
