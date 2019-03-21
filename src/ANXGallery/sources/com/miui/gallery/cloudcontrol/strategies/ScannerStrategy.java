package com.miui.gallery.cloudcontrol.strategies;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.cloudcontrol.Merger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ScannerStrategy extends BaseStrategy {
    public static final Merger<ScannerStrategy> CLOUD_FIRST_MERGER = new Merger<ScannerStrategy>() {
        public ScannerStrategy merge(ScannerStrategy local, ScannerStrategy cloud) {
            if (cloud.mStreamFileStrategy == null && local.mStreamFileStrategy != null) {
                cloud.mStreamFileStrategy = StreamFileStrategy.cloneFrom(local.mStreamFileStrategy);
            }
            if (cloud.mFileSizeLimitStrategy == null && local.mFileSizeLimitStrategy != null) {
                cloud.mFileSizeLimitStrategy = FileSizeLimitStrategy.cloneFrom(local.mFileSizeLimitStrategy);
            }
            if (cloud.mSpecialTypeMediaStrategy == null && local.mSpecialTypeMediaStrategy != null) {
                cloud.mSpecialTypeMediaStrategy = SpecialTypeMediaStrategy.cloneFrom(local.mSpecialTypeMediaStrategy);
            }
            return cloud;
        }
    };
    @SerializedName("file_size_limit")
    private FileSizeLimitStrategy mFileSizeLimitStrategy;
    @SerializedName("special_type_media")
    private SpecialTypeMediaStrategy mSpecialTypeMediaStrategy;
    @SerializedName("stream_file")
    private StreamFileStrategy mStreamFileStrategy;

    public static class FileSizeLimitStrategy {
        @SerializedName("image_max_size")
        private long mImageMaxSize;
        @SerializedName("video_max_size")
        private long mVideoMaxSize;

        public static FileSizeLimitStrategy createDefault() {
            FileSizeLimitStrategy strategy = new FileSizeLimitStrategy();
            strategy.mImageMaxSize = 40;
            strategy.mVideoMaxSize = 4096;
            strategy.doAdditionalProcessing();
            return strategy;
        }

        public static FileSizeLimitStrategy cloneFrom(FileSizeLimitStrategy strategy) {
            FileSizeLimitStrategy ret = new FileSizeLimitStrategy();
            ret.mImageMaxSize = strategy.mImageMaxSize;
            ret.mVideoMaxSize = strategy.mVideoMaxSize;
            return ret;
        }

        public long getImageMaxSize() {
            return this.mImageMaxSize;
        }

        public long getVideoMaxSize() {
            return this.mVideoMaxSize;
        }

        public void doAdditionalProcessing() {
            this.mImageMaxSize *= 1048576;
            this.mVideoMaxSize *= 1048576;
        }

        public String toString() {
            return "FileSizeLimitStrategy{mImageMaxSize=" + this.mImageMaxSize + ", mVideoMaxSize=" + this.mVideoMaxSize + '}';
        }
    }

    public static class SpecialTypeMediaStrategy {
        @SerializedName("hfr_120fps_lower_bound")
        private long mHfr120FpsLowerBound;
        @SerializedName("hfr_120fps_upper_bound")
        private long mHfr120FpsUpperBound;
        @SerializedName("hfr_240fps_lower_bound")
        private long mHfr240FpsLowerBound;
        @SerializedName("hfr_240fps_upper_bound")
        private long mHfr240FpsUpperBound;

        public static SpecialTypeMediaStrategy createDefault() {
            SpecialTypeMediaStrategy strategy = new SpecialTypeMediaStrategy();
            strategy.mHfr120FpsLowerBound = 101;
            strategy.mHfr120FpsUpperBound = 139;
            strategy.mHfr240FpsLowerBound = 161;
            strategy.mHfr240FpsUpperBound = 239;
            return strategy;
        }

        public static SpecialTypeMediaStrategy cloneFrom(SpecialTypeMediaStrategy strategy) {
            SpecialTypeMediaStrategy ret = new SpecialTypeMediaStrategy();
            ret.mHfr120FpsLowerBound = strategy.mHfr120FpsLowerBound;
            ret.mHfr120FpsUpperBound = strategy.mHfr120FpsUpperBound;
            ret.mHfr240FpsLowerBound = strategy.mHfr240FpsLowerBound;
            ret.mHfr240FpsUpperBound = strategy.mHfr240FpsUpperBound;
            return ret;
        }

        public long getHfr120FpsLowerBound() {
            return this.mHfr120FpsLowerBound;
        }

        public long getHfr120FpsUpperBound() {
            return this.mHfr120FpsUpperBound;
        }

        public long getHfr240FpsLowerBound() {
            return this.mHfr240FpsLowerBound;
        }

        public long getHfr240FpsUpperBound() {
            return this.mHfr240FpsUpperBound;
        }

        public String toString() {
            return "SpecialTypeMediaStrategy{mHfr120FpsLowerBound=" + this.mHfr120FpsLowerBound + ", mHfr120FpsUpperBound=" + this.mHfr120FpsUpperBound + ", mHfr240FpsLowerBound=" + this.mHfr240FpsLowerBound + ", mHfr240FpsUpperBound=" + this.mHfr240FpsUpperBound + '}';
        }
    }

    public static class StreamFileStrategy {
        @SerializedName("delay_milliseconds")
        private long mDelayMilliseconds;
        private transient HashMap<String, StreamFolder> mFoldersMap;
        @SerializedName("folders")
        private List<StreamFolder> mStreamFolders;

        public long getDelayMilliseconds() {
            return this.mDelayMilliseconds;
        }

        public boolean isStreamFolder(String path) {
            return this.mFoldersMap != null ? this.mFoldersMap.containsKey(path) : false;
        }

        public static StreamFileStrategy createDefault() {
            StreamFileStrategy strategy = new StreamFileStrategy();
            strategy.mDelayMilliseconds = 2000;
            strategy.mStreamFolders = new ArrayList();
            strategy.mStreamFolders.add(new StreamFolder("bluetooth"));
            strategy.doAdditionalProcessing();
            return strategy;
        }

        private void doAdditionalProcessing() {
            if (this.mStreamFolders != null) {
                if (this.mFoldersMap == null) {
                    this.mFoldersMap = new HashMap();
                } else {
                    this.mFoldersMap.clear();
                }
                for (StreamFolder folder : this.mStreamFolders) {
                    this.mFoldersMap.put(folder.getPath(), folder);
                }
            }
        }

        public static StreamFileStrategy cloneFrom(StreamFileStrategy strategy) {
            StreamFileStrategy ret = new StreamFileStrategy();
            ret.mDelayMilliseconds = strategy.mDelayMilliseconds;
            ret.mStreamFolders = Lists.newArrayList(strategy.mStreamFolders);
            ret.mFoldersMap = Maps.newHashMap(strategy.mFoldersMap);
            return ret;
        }
    }

    public static class StreamFolder {
        @SerializedName("path")
        private String mPath;

        public StreamFolder(String path) {
            this.mPath = path;
        }

        public String getPath() {
            return this.mPath;
        }
    }

    public StreamFileStrategy getStreamFileStrategy() {
        return this.mStreamFileStrategy != null ? this.mStreamFileStrategy : StreamFileStrategy.createDefault();
    }

    public FileSizeLimitStrategy getFileSizeStrategy() {
        return this.mFileSizeLimitStrategy != null ? this.mFileSizeLimitStrategy : FileSizeLimitStrategy.createDefault();
    }

    public SpecialTypeMediaStrategy getSpecialTypeMediaStrategy() {
        return this.mSpecialTypeMediaStrategy != null ? this.mSpecialTypeMediaStrategy : SpecialTypeMediaStrategy.createDefault();
    }

    public void doAdditionalProcessing() {
        super.doAdditionalProcessing();
        if (this.mStreamFileStrategy != null) {
            this.mStreamFileStrategy.doAdditionalProcessing();
        }
        if (this.mFileSizeLimitStrategy != null) {
            this.mFileSizeLimitStrategy.doAdditionalProcessing();
        }
    }

    public static ScannerStrategy createDefault() {
        ScannerStrategy strategy = new ScannerStrategy();
        strategy.mStreamFileStrategy = StreamFileStrategy.createDefault();
        strategy.mFileSizeLimitStrategy = FileSizeLimitStrategy.createDefault();
        strategy.mSpecialTypeMediaStrategy = SpecialTypeMediaStrategy.createDefault();
        return strategy;
    }
}
