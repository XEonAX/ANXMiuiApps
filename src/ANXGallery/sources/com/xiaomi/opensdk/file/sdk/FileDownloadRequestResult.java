package com.xiaomi.opensdk.file.sdk;

import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.kss.DownloadRequestResult;
import cn.kuaipan.android.utils.ApiDataHelper.IKscData;
import cn.kuaipan.android.utils.ApiDataHelper.IKscData.Parser;
import java.util.Map;

public class FileDownloadRequestResult extends DownloadRequestResult implements IKscData {
    public static final Parser<FileDownloadRequestResult> PARSER = new Parser<FileDownloadRequestResult>() {
    };

    public FileDownloadRequestResult(Map<String, Object> map) throws KscException {
        super(map);
    }
}
