package com.xiaomi.tinyData;

import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import java.util.List;

public interface TinyDataUploader {
    void upload(List<ClientUploadDataItem> list, String str, String str2);
}
