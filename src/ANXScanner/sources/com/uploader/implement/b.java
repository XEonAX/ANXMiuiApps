package com.uploader.implement;

import com.uploader.export.IUploaderStatistics;
import java.util.Map;
import java.util.Set;

/* compiled from: StatisticsTool */
public class b {
    private static volatile IUploaderStatistics a;

    static final void a(IUploaderStatistics statistics) {
        a = statistics;
    }

    public static void a(String module, String monitorPoint, Set<String> measures, Set<String> dimensions, boolean commitDetail) {
        IUploaderStatistics statistics = a;
        if (statistics != null) {
            statistics.onRegister(module, monitorPoint, measures, dimensions, commitDetail);
        }
    }

    public static void a(String module, String monitorPoint, Map<String, Double> measures, Map<String, String> dimensions) {
        IUploaderStatistics statistics = a;
        if (statistics != null) {
            statistics.onCommit(module, monitorPoint, measures, dimensions);
        }
    }
}
