package com.milink.api.v1;

import android.os.RemoteException;
import com.milink.api.v1.aidl.IMcsDataSource.Stub;

public class McsDataSource extends Stub {
    MilinkClientManagerDataSource mDataSource = null;

    public void setDataSource(MilinkClientManagerDataSource dataSource) {
        this.mDataSource = dataSource;
    }

    public String getPrevPhoto(String uri, boolean isRecyle) throws RemoteException {
        if (this.mDataSource == null) {
            return null;
        }
        return this.mDataSource.getPrevPhoto(uri, isRecyle);
    }

    public String getNextPhoto(String uri, boolean isRecyle) throws RemoteException {
        if (this.mDataSource == null) {
            return null;
        }
        return this.mDataSource.getNextPhoto(uri, isRecyle);
    }
}
