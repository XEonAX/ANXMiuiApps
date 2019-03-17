package com.uploader.export;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Map;

public interface IUploaderTask {
    @NonNull
    String getBizType();

    @NonNull
    String getFilePath();

    @NonNull
    String getFileType();

    @Nullable
    Map<String, String> getMetaInfo();
}
