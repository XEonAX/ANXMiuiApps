package com.miui.gallery.assistant.model;

import android.util.LongSparseArray;
import com.miui.gallery.assistant.jni.cluster.Cluster;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class ImageFeatureGroupSet<T extends ImageFeatureItem> extends HashSet<ImageFeatureGroup<T>> {
    public ImageFeatureGroupSet(List<T> clusterFeatureItems, List<Cluster> clusters) {
        if (BaseMiscUtil.isValid(clusters) && BaseMiscUtil.isValid(clusterFeatureItems)) {
            LongSparseArray<T> featureSparseArray = new LongSparseArray();
            for (T featureItem : clusterFeatureItems) {
                if (featureItem.getMediaSha1() != null) {
                    featureSparseArray.put(featureItem.getMediaId(), featureItem);
                }
            }
            for (Cluster cluster : clusters) {
                List<T> featureItems = new ArrayList();
                for (long id : cluster.getImageIds()) {
                    ImageFeatureItem feature = (ImageFeatureItem) featureSparseArray.get(id);
                    if (feature != null) {
                        featureItems.add(feature);
                    }
                }
                if (BaseMiscUtil.isValid(featureItems)) {
                    add(new ImageFeatureGroup(featureItems));
                }
            }
        }
    }

    public List<T> getSelectedImages() {
        List<T> list = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            list.add(((ImageFeatureGroup) it.next()).getBestImage());
        }
        return list;
    }
}
