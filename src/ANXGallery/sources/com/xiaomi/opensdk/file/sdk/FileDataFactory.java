package com.xiaomi.opensdk.file.sdk;

import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.kss.IDataFactory;
import cn.kuaipan.android.kss.IKssUploadRequestResult;

public class FileDataFactory implements IDataFactory {
    public IKssUploadRequestResult createUploadRequestResult(String requestStr) throws KscException {
        return FileUploadRequestResult.create(requestStr);
    }
}
