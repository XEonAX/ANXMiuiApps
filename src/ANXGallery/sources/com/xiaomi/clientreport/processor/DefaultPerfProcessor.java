package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.util.ClientReportUtil;
import java.io.File;
import java.util.HashMap;
import java.util.List;

public class DefaultPerfProcessor implements IPerfProcessor {
    protected Context mContext;
    private HashMap<String, HashMap<String, BaseClientReport>> mPerfMap;

    public DefaultPerfProcessor(Context context) {
        this.mContext = context;
    }

    public void readAndSend() {
        ClientReportUtil.moveFiles(this.mContext, "perf", "perfUploading");
        File[] files = ClientReportUtil.getReadFileName(this.mContext, "perfUploading");
        if (files != null && files.length > 0) {
            MyLog.v(this.mContext.getPackageName() + "  perfread  paths " + files.length);
            for (File file : files) {
                if (file != null) {
                    List<String> result = PerfKVFileHelper.extractToDatas(this.mContext, file.getAbsolutePath());
                    file.delete();
                    send(result);
                }
            }
        }
    }

    public void send(List<String> data) {
        ClientReportUtil.sendFile(this.mContext, data);
    }

    public void write(BaseClientReport[] baseClientReports) {
        String filePath = getWriteFileName(baseClientReports[0]);
        if (!TextUtils.isEmpty(filePath)) {
            PerfKVFileHelper.put(filePath, baseClientReports);
        }
    }

    public void process() {
        if (this.mPerfMap != null) {
            if (this.mPerfMap.size() > 0) {
                for (String key : this.mPerfMap.keySet()) {
                    HashMap<String, BaseClientReport> map = (HashMap) this.mPerfMap.get(key);
                    if (map != null && map.size() > 0) {
                        MyLog.v("begin write perfJob " + map.size());
                        BaseClientReport[] dataArray = new BaseClientReport[map.size()];
                        map.values().toArray(dataArray);
                        write(dataArray);
                    }
                }
            }
            this.mPerfMap.clear();
        }
    }

    public void preProcess(BaseClientReport clientReport) {
        if ((clientReport instanceof PerfClientReport) && this.mPerfMap != null) {
            PerfClientReport perfClientReport = (PerfClientReport) clientReport;
            String fileKey = getFirstPerfFileName(perfClientReport);
            String key = PerfKVFileHelper.generateKey(perfClientReport);
            HashMap<String, BaseClientReport> innerMaps = (HashMap) this.mPerfMap.get(fileKey);
            if (innerMaps == null) {
                innerMaps = new HashMap();
            }
            PerfClientReport oldValue = (PerfClientReport) innerMaps.get(key);
            if (oldValue != null) {
                perfClientReport.perfCounts += oldValue.perfCounts;
                perfClientReport.perfLatencies += oldValue.perfLatencies;
            }
            innerMaps.put(key, perfClientReport);
            this.mPerfMap.put(fileKey, innerMaps);
            MyLog.v("pre perf inner " + innerMaps.size() + " outer " + this.mPerfMap.size());
        }
    }

    private String getOriginalFilePath(BaseClientReport baseClientReport) {
        String result = "";
        int production = baseClientReport.production;
        String interfaceId = baseClientReport.clientInterfaceId;
        if (production > 0 && !TextUtils.isEmpty(interfaceId)) {
            result = String.valueOf(production) + "#" + interfaceId;
        }
        File folder = this.mContext.getExternalFilesDir("perf");
        if (folder == null) {
            MyLog.e("cannot get folder when to write perf");
            return null;
        }
        if (!folder.exists()) {
            folder.mkdirs();
        }
        return new File(folder, result).getAbsolutePath();
    }

    private String getWriteFileName(BaseClientReport clientReport) {
        String beginFilePath = getOriginalFilePath(clientReport);
        if (TextUtils.isEmpty(beginFilePath)) {
            return null;
        }
        for (int i = 0; i < 20; i++) {
            String path = beginFilePath + i;
            if (ClientReportUtil.isFileCanBeUse(this.mContext, path)) {
                return path;
            }
        }
        return null;
    }

    public static String getFirstPerfFileName(BaseClientReport baseClientReport) {
        return String.valueOf(baseClientReport.production) + "#" + baseClientReport.clientInterfaceId;
    }

    public void setPerfMap(HashMap<String, HashMap<String, BaseClientReport>> map) {
        this.mPerfMap = map;
    }
}
