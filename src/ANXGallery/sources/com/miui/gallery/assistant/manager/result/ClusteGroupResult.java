package com.miui.gallery.assistant.manager.result;

import com.miui.gallery.assistant.jni.cluster.Cluster;
import java.util.ArrayList;
import java.util.List;

public class ClusteGroupResult extends AlgorithmResult {
    private List<Cluster> mClusters;

    public ClusteGroupResult(ArrayList<Cluster> clusters) {
        super(0);
        this.mClusters = clusters;
    }

    public ClusteGroupResult(int resultCode) {
        super(resultCode);
    }

    public List<Cluster> getClusters() {
        return this.mClusters;
    }
}
