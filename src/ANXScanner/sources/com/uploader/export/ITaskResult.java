package com.uploader.export;

import java.util.Map;

public interface ITaskResult {
    String getBizResult();

    String getFileUrl();

    Map<String, String> getResult();
}
