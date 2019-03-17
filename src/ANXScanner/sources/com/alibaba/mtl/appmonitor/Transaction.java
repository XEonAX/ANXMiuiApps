package com.alibaba.mtl.appmonitor;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.text.TextUtils;
import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.log.model.LogField;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class Transaction implements Parcelable {
    public static final Creator<Transaction> CREATOR = new Creator<Transaction>() {
        /* renamed from: b */
        public Transaction createFromParcel(Parcel parcel) {
            return Transaction.a(parcel);
        }

        /* renamed from: a */
        public Transaction[] newArray(int i) {
            return new Transaction[i];
        }
    };
    protected Integer a;
    protected DimensionValueSet b;
    protected Map<String, String> e;
    private Object lock;
    protected String o;
    protected String p;
    protected String r;

    Transaction(Integer eventId, String module, String monitorPoint, DimensionValueSet dimensionValues) {
        this(eventId, module, monitorPoint, dimensionValues, null);
    }

    Transaction(Integer eventId, String module, String monitorPoint, DimensionValueSet dimensionValues, String appkey) {
        this.a = eventId;
        this.o = module;
        this.p = monitorPoint;
        this.r = UUID.randomUUID().toString();
        this.b = dimensionValues;
        if (!TextUtils.isEmpty(appkey)) {
            this.e = new HashMap();
            this.e.put(LogField.APPKEY.toString(), appkey);
        }
        this.lock = new Object();
    }

    public void begin(String measureName) {
        if (AppMonitor.a != null) {
            try {
                AppMonitor.a.transaction_begin(this, measureName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void end(String measureName) {
        if (AppMonitor.a != null) {
            try {
                AppMonitor.a.transaction_end(this, measureName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void addDimensionValues(DimensionValueSet dimensionValues) {
        synchronized (this.lock) {
            if (this.b == null) {
                this.b = dimensionValues;
            } else {
                this.b.addValues(dimensionValues);
            }
        }
    }

    public void addDimensionValues(String dimensionName, String dimensionValue) {
        synchronized (this.lock) {
            if (this.b == null) {
                this.b = (DimensionValueSet) a.a().a(DimensionValueSet.class, new Object[0]);
            }
            this.b.setValue(dimensionName, dimensionValue);
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.b, flags);
        dest.writeInt(this.a.intValue());
        dest.writeString(this.o);
        dest.writeString(this.p);
        dest.writeString(this.r);
        dest.writeMap(this.e);
    }

    static Transaction a(Parcel parcel) {
        Transaction transaction = new Transaction();
        try {
            transaction.b = (DimensionValueSet) parcel.readParcelable(Transaction.class.getClassLoader());
            transaction.a = Integer.valueOf(parcel.readInt());
            transaction.o = parcel.readString();
            transaction.p = parcel.readString();
            transaction.r = parcel.readString();
            transaction.e = parcel.readHashMap(Transaction.class.getClassLoader());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return transaction;
    }
}
