package com.miui.gallery.util;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public class ShareComponentSorter {
    private static volatile ShareComponentSorter sInstance;
    private Context mApplication;
    private Gauss mGauss = new Gauss(0.0d, 1.0d);
    private boolean mHasPendingSave;
    private boolean mInitialized;
    private List<OnInitializedListener> mOnInitializedListeners = new ArrayList();
    private Map<Tag, ComponentRecord> mRecords;
    private Map<Tag, List<Long>> mTmpRecords;

    public interface OnInitializedListener {
        void onInitialized();
    }

    private static class ComponentComparator implements Comparator<ResolveInfo> {
        private Map<Tag, Integer> mPriority;
        private Tag mTemp = new Tag();

        public ComponentComparator(Map<Tag, Integer> priority) {
            this.mPriority = priority;
        }

        public int compare(ResolveInfo lhs, ResolveInfo rhs) {
            this.mTemp.mPackage = lhs.activityInfo.packageName;
            this.mTemp.mClass = lhs.activityInfo.name;
            int lPrior = Numbers.unbox((Integer) this.mPriority.get(this.mTemp), 0);
            this.mTemp.mPackage = rhs.activityInfo.packageName;
            this.mTemp.mClass = rhs.activityInfo.name;
            int rPrior = Numbers.unbox((Integer) this.mPriority.get(this.mTemp), 0);
            if (lPrior > rPrior) {
                return -1;
            }
            return lPrior == rPrior ? 0 : 1;
        }
    }

    private static class ComponentRecord {
        private static final long ONE_DAY = TimeUnit.DAYS.toMillis(1);
        private String mComponent;
        private int mCountOfToday;
        private TreeMap<Long, Integer> mHistory;
        private String mPackage;
        private long mRecent;
        private long mToday;

        interface Evaluator {
            float evaluate(long j, int i);
        }

        private ComponentRecord(String pkg, String component, long recent, TreeMap<Long, Integer> history) {
            this.mPackage = pkg;
            this.mComponent = component;
            this.mRecent = recent;
            this.mHistory = history;
            this.mToday = this.mRecent / ONE_DAY;
            this.mCountOfToday = Numbers.unbox((Integer) this.mHistory.get(Long.valueOf(this.mToday)), 0);
        }

        ComponentRecord(String packageName, String component) {
            this(packageName, component, 0, new TreeMap());
        }

        float calcPriority(Evaluator evaluator) {
            float priority = 0.0f;
            for (Entry<Long, Integer> entry : this.mHistory.entrySet()) {
                priority += evaluator.evaluate(Numbers.unbox((Long) entry.getKey(), 0), Numbers.unbox((Integer) entry.getValue(), 0));
            }
            return priority;
        }

        void append(long millis) {
            if (Math.abs(millis - this.mRecent) >= 0) {
                this.mRecent = millis;
                long day = millis / ONE_DAY;
                if (day != this.mToday) {
                    Log.d("ShareComponentSorter", "switch day: %d->%d", Long.valueOf(this.mToday), Long.valueOf(day));
                    this.mToday = day;
                    this.mCountOfToday = Numbers.unbox((Integer) this.mHistory.get(Long.valueOf(this.mToday)), 0);
                }
                TreeMap treeMap = this.mHistory;
                Long valueOf = Long.valueOf(this.mToday);
                int i = this.mCountOfToday + 1;
                this.mCountOfToday = i;
                treeMap.put(valueOf, Integer.valueOf(i));
            }
        }

        private static TreeMap<Long, Integer> readHistory(JSONObject json) {
            TreeMap<Long, Integer> history = new TreeMap();
            Iterator<String> it = json.keys();
            while (it.hasNext()) {
                try {
                    String day = (String) it.next();
                    history.put(Long.valueOf(Long.parseLong(day)), Integer.valueOf(json.getInt(day)));
                } catch (Throwable e) {
                    Log.w("ShareComponentSorter", e);
                } catch (Throwable e2) {
                    Log.w("ShareComponentSorter", e2);
                }
            }
            Log.d("ShareComponentSorter", "finish read history[%d] from json[%d]", Integer.valueOf(history.size()), Integer.valueOf(json.length()));
            return history;
        }

        private static JSONObject writeHistory(TreeMap<Long, Integer> history) {
            JSONObject json = new JSONObject();
            if (!history.isEmpty()) {
                long latest = ((Long) history.navigableKeySet().last()).longValue();
                for (Entry<Long, Integer> entry : history.descendingMap().entrySet()) {
                    Object key = (Long) entry.getKey();
                    if (key == null || key.longValue() == 0) {
                        Log.d("ShareComponentSorter", "receive an invalid value[%s], skip", key);
                    } else {
                        try {
                            if (latest - key.longValue() > 30) {
                                Log.d("ShareComponentSorter", "record is out of date(%dd), skip", Long.valueOf(latest - key.longValue()));
                                break;
                            }
                            json.put(String.valueOf(entry.getKey()), entry.getValue());
                        } catch (Throwable e) {
                            Log.w("ShareComponentSorter", e);
                        }
                    }
                }
                Log.d("ShareComponentSorter", "finish write history[%d] to json[%d]", Integer.valueOf(history.size()), Integer.valueOf(json.length()));
            }
            return json;
        }

        static ComponentRecord fromJson(JSONObject object) {
            try {
                return new ComponentRecord(object.getString("package"), object.getString("component"), object.optLong("recent"), readHistory(object.getJSONObject("history")));
            } catch (Throwable e) {
                Log.w("ShareComponentSorter", e);
                return null;
            }
        }

        static JSONObject toJson(ComponentRecord info) {
            JSONObject json = new JSONObject();
            try {
                json.put("package", info.mPackage);
                json.put("component", info.mComponent);
                json.put("recent", info.mRecent);
                json.put("history", writeHistory(info.mHistory));
            } catch (Throwable e) {
                Log.w("ShareComponentSorter", e);
            }
            return json;
        }
    }

    private static class DummyComparator implements Comparator<ResolveInfo> {
        private DummyComparator() {
        }

        public int compare(ResolveInfo lhs, ResolveInfo rhs) {
            return 0;
        }
    }

    private class GaussEvaluator implements Evaluator {
        private double mCoefficient;
        private long mToday;

        private GaussEvaluator() {
            this.mToday = System.currentTimeMillis() / ComponentRecord.ONE_DAY;
            this.mCoefficient = 10.0d;
        }

        public float evaluate(long day, int count) {
            return (float) (ShareComponentSorter.this.mGauss.value(((double) (this.mToday - day)) / this.mCoefficient) * ((double) count));
        }
    }

    private class LoadTask extends AsyncTask<String, Void, Map<Tag, ComponentRecord>> {
        private LoadTask() {
        }

        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x0065 A:{SYNTHETIC, Splitter: B:19:0x0065} */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x009e A:{SYNTHETIC, Splitter: B:36:0x009e} */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:42:0x00ae A:{SYNTHETIC, Splitter: B:42:0x00ae} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected Map<Tag, ComponentRecord> doInBackground(String... params) {
            Throwable e;
            String raw;
            Throwable th;
            long start = System.currentTimeMillis();
            Map<Tag, ComponentRecord> records = new HashMap();
            File file = new File(ShareComponentSorter.this.mApplication.getFilesDir(), params[0]);
            if (file.exists()) {
                Log.d("ShareComponentSorter", "read records from file");
                StringBuilder builder = new StringBuilder();
                FileReader reader = null;
                try {
                    FileReader reader2 = new FileReader(file);
                    try {
                        char[] buffer = new char[512];
                        while (reader2.read(buffer) != -1) {
                            builder.append(buffer);
                        }
                        if (reader2 != null) {
                            try {
                                reader2.close();
                                reader = reader2;
                            } catch (Throwable e2) {
                                Log.w("ShareComponentSorter", e2);
                                reader = reader2;
                            }
                        }
                    } catch (FileNotFoundException e3) {
                        e2 = e3;
                        reader = reader2;
                        try {
                            Log.w("ShareComponentSorter", e2);
                            if (reader != null) {
                            }
                            raw = builder.toString();
                            if (TextUtils.isEmpty(raw)) {
                            }
                            return records;
                        } catch (Throwable th2) {
                            th = th2;
                            if (reader != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e4) {
                        e2 = e4;
                        reader = reader2;
                        Log.w("ShareComponentSorter", e2);
                        if (reader != null) {
                        }
                        raw = builder.toString();
                        if (TextUtils.isEmpty(raw)) {
                        }
                        return records;
                    } catch (Throwable th3) {
                        th = th3;
                        reader = reader2;
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (Throwable e22) {
                                Log.w("ShareComponentSorter", e22);
                            }
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e5) {
                    e22 = e5;
                    Log.w("ShareComponentSorter", e22);
                    if (reader != null) {
                        try {
                            reader.close();
                        } catch (Throwable e222) {
                            Log.w("ShareComponentSorter", e222);
                        }
                    }
                    raw = builder.toString();
                    if (TextUtils.isEmpty(raw)) {
                    }
                    return records;
                } catch (IOException e6) {
                    e222 = e6;
                    Log.w("ShareComponentSorter", e222);
                    if (reader != null) {
                        try {
                            reader.close();
                        } catch (Throwable e2222) {
                            Log.w("ShareComponentSorter", e2222);
                        }
                    }
                    raw = builder.toString();
                    if (TextUtils.isEmpty(raw)) {
                    }
                    return records;
                }
                raw = builder.toString();
                if (TextUtils.isEmpty(raw)) {
                    Log.d("ShareComponentSorter", "record file is empty, skip");
                } else {
                    boolean invalidFile = false;
                    try {
                        JSONArray array = new JSONArray(raw);
                        Log.d("ShareComponentSorter", "start parsing %d records", Integer.valueOf(array.length()));
                        for (int i = 0; i < array.length(); i++) {
                            ComponentRecord record = ComponentRecord.fromJson(array.getJSONObject(i));
                            if (record != null) {
                                records.put(new Tag(record.mPackage, record.mComponent), record);
                            } else {
                                invalidFile = true;
                            }
                        }
                    } catch (Throwable e22222) {
                        invalidFile = true;
                        Log.w("ShareComponentSorter", "read history failed, abort:");
                        Log.w("ShareComponentSorter", e22222);
                    }
                    if (invalidFile) {
                        Log.w("ShareComponentSorter", "file is illegal, delete file: %b", Boolean.valueOf(file.delete()));
                    }
                    Log.d("ShareComponentSorter", "read from file: %dms", Long.valueOf(System.currentTimeMillis() - start));
                }
            } else {
                Log.d("ShareComponentSorter", "no file found, create a empty record");
            }
            return records;
        }

        protected void onPostExecute(Map<Tag, ComponentRecord> records) {
            super.onPostExecute(records);
            Log.d("ShareComponentSorter", "initialized finish.");
            ShareComponentSorter.this.mRecords = records;
            if (!(ShareComponentSorter.this.mTmpRecords == null || ShareComponentSorter.this.mTmpRecords.isEmpty())) {
                Log.d("ShareComponentSorter", "has temp records, do transfer");
                for (Entry<Tag, List<Long>> entry : ShareComponentSorter.this.mTmpRecords.entrySet()) {
                    for (Long time : (List) entry.getValue()) {
                        ShareComponentSorter.this.append(((Tag) entry.getKey()).mPackage, ((Tag) entry.getKey()).mClass, time.longValue());
                    }
                }
            }
            if (ShareComponentSorter.this.mHasPendingSave) {
                Log.d("ShareComponentSorter", "requested save when initializing, do save");
                ShareComponentSorter.this.save();
                ShareComponentSorter.this.mHasPendingSave = false;
            }
            for (OnInitializedListener listener : ShareComponentSorter.this.mOnInitializedListeners) {
                listener.onInitialized();
            }
        }
    }

    private class SaveTask extends AsyncTask<String, Void, Void> {
        private SaveTask() {
        }

        /* JADX WARNING: Removed duplicated region for block: B:30:0x009d A:{SYNTHETIC, Splitter: B:30:0x009d} */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00ab A:{SYNTHETIC, Splitter: B:36:0x00ab} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected Void doInBackground(String... params) {
            Throwable e;
            Throwable th;
            long start = System.currentTimeMillis();
            File file = new File(ShareComponentSorter.this.mApplication.getFilesDir(), params[0]);
            JSONArray array = new JSONArray();
            synchronized (ShareComponentSorter.this.mRecords) {
                for (Entry<Tag, ComponentRecord> entry : ShareComponentSorter.this.mRecords.entrySet()) {
                    array.put(ComponentRecord.toJson((ComponentRecord) entry.getValue()));
                }
                Log.d("ShareComponentSorter", "write %d records to file", Integer.valueOf(ShareComponentSorter.this.mRecords.size()));
            }
            FileWriter writer = null;
            try {
                FileWriter writer2 = new FileWriter(file);
                try {
                    writer2.write(array.toString());
                    writer2.flush();
                    if (writer2 != null) {
                        try {
                            writer2.close();
                            writer = writer2;
                        } catch (Throwable e2) {
                            Log.w("ShareComponentSorter", e2);
                            writer = writer2;
                        }
                    }
                } catch (IOException e3) {
                    e2 = e3;
                    writer = writer2;
                    try {
                        Log.w("ShareComponentSorter", e2);
                        if (writer != null) {
                        }
                        Log.d("ShareComponentSorter", "write to file: %dms", Long.valueOf(System.currentTimeMillis() - start));
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (writer != null) {
                            try {
                                writer.close();
                            } catch (Throwable e22) {
                                Log.w("ShareComponentSorter", e22);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    writer = writer2;
                    if (writer != null) {
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e22 = e4;
                Log.w("ShareComponentSorter", e22);
                if (writer != null) {
                    try {
                        writer.close();
                    } catch (Throwable e222) {
                        Log.w("ShareComponentSorter", e222);
                    }
                }
                Log.d("ShareComponentSorter", "write to file: %dms", Long.valueOf(System.currentTimeMillis() - start));
                return null;
            }
            Log.d("ShareComponentSorter", "write to file: %dms", Long.valueOf(System.currentTimeMillis() - start));
            return null;
        }
    }

    private static class Tag {
        private String mClass;
        private String mPackage;

        public Tag(String pkg, String cls) {
            this.mPackage = pkg;
            this.mClass = cls;
        }

        private Tag() {
        }

        public boolean equals(Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Tag)) {
                return false;
            }
            Tag tag = (Tag) o;
            if (this.mPackage.equals(tag.mPackage) && this.mClass.equals(tag.mClass)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.mPackage.hashCode() ^ this.mClass.hashCode();
        }
    }

    public static synchronized ShareComponentSorter getInstance() {
        ShareComponentSorter shareComponentSorter;
        synchronized (ShareComponentSorter.class) {
            if (sInstance == null) {
                sInstance = new ShareComponentSorter();
            }
            shareComponentSorter = sInstance;
        }
        return shareComponentSorter;
    }

    public void registerOnInitializedListener(OnInitializedListener onInitializedListener) {
        this.mOnInitializedListeners.add(onInitializedListener);
    }

    public void removeOnInitializedListener(OnInitializedListener onInitializedListener) {
        this.mOnInitializedListeners.remove(onInitializedListener);
    }

    public boolean initialized() {
        return this.mInitialized;
    }

    public void initialize(Context context) {
        if (!this.mInitialized) {
            if (context != context.getApplicationContext()) {
                throw new IllegalArgumentException("please initialize with application");
            }
            this.mApplication = context;
            new LoadTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{"components-history.json"});
            this.mInitialized = true;
        }
    }

    public Comparator<ResolveInfo> createComparator() {
        if (this.mRecords != null) {
            Comparator componentComparator;
            synchronized (this.mRecords) {
                long start = System.currentTimeMillis();
                Log.d("ShareComponentSorter", "initialized create a new comparator");
                Map<Tag, Integer> priority = new HashMap();
                GaussEvaluator gauss = new GaussEvaluator();
                for (Entry<Tag, ComponentRecord> entry : this.mRecords.entrySet()) {
                    float value = ((ComponentRecord) entry.getValue()).calcPriority(gauss);
                    Log.d("ShareComponentSorter", "[%s] -> %f", ((Tag) entry.getKey()).mClass, Float.valueOf(value));
                    priority.put(entry.getKey(), Integer.valueOf((int) (1000.0f * value)));
                }
                Log.d("ShareComponentSorter", "create a gauss comparator costs %dms", Long.valueOf(System.currentTimeMillis() - start));
                componentComparator = new ComponentComparator(priority);
            }
            return componentComparator;
        }
        Log.d("ShareComponentSorter", "not initialized, use a dummy comparator");
        return new DummyComparator();
    }

    public void touch(String pkg, String component) {
        append(pkg, component, System.currentTimeMillis());
    }

    private void append(String pkg, String component, long time) {
        Tag tag = new Tag(pkg, component);
        if (this.mRecords == null) {
            Log.d("ShareComponentSorter", "not initialized, use a temp record");
            if (this.mTmpRecords == null) {
                this.mTmpRecords = new HashMap();
            }
            List<Long> records = (List) this.mTmpRecords.get(tag);
            if (records == null) {
                records = new ArrayList();
                this.mTmpRecords.put(tag, records);
            }
            records.add(Long.valueOf(time));
            return;
        }
        synchronized (this.mRecords) {
            Log.d("ShareComponentSorter", "initialized, inserting");
            ComponentRecord record = (ComponentRecord) this.mRecords.get(tag);
            if (record == null) {
                record = new ComponentRecord(pkg, component);
                this.mRecords.put(tag, record);
            }
            record.append(time);
        }
    }

    public void save() {
        if (this.mRecords != null) {
            new SaveTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{"components-history.json"});
            return;
        }
        this.mHasPendingSave = true;
    }
}
