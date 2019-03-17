package com.uploader.export;

import java.util.Map;
import java.util.Set;

public interface IUploaderStatistics {
    void onCommit(String str, String str2, Map<String, Double> map, Map<String, String> map2);

    void onRegister(String str, String str2, Set<String> set, Set<String> set2, boolean z);
}
