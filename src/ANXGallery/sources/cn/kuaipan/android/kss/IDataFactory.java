package cn.kuaipan.android.kss;

import cn.kuaipan.android.exception.KscException;

public interface IDataFactory {
    IKssUploadRequestResult createUploadRequestResult(String str) throws KscException;
}
