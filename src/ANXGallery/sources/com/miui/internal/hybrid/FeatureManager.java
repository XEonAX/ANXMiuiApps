package com.miui.internal.hybrid;

import java.util.HashMap;
import java.util.Map;
import miui.hybrid.HybridFeature;
import miui.hybrid.Response;

public class FeatureManager {
    private Map<String, HybridFeature> eT = new HashMap();
    private Config eU;
    private ClassLoader eV;

    public FeatureManager(Config config, ClassLoader classLoader) {
        this.eU = config;
        this.eV = classLoader;
    }

    private HybridFeature h(String str) throws HybridException {
        StringBuilder stringBuilder;
        try {
            return (HybridFeature) this.eV.loadClass(str).newInstance();
        } catch (ClassNotFoundException e) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("feature not found: ");
            stringBuilder.append(str);
            throw new HybridException(Response.CODE_FEATURE_ERROR, stringBuilder.toString());
        } catch (InstantiationException e2) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("feature cannot be instantiated: ");
            stringBuilder.append(str);
            throw new HybridException(Response.CODE_FEATURE_ERROR, stringBuilder.toString());
        } catch (IllegalAccessException e3) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("feature cannot be accessed: ");
            stringBuilder.append(str);
            throw new HybridException(Response.CODE_FEATURE_ERROR, stringBuilder.toString());
        }
    }

    public HybridFeature lookupFeature(String str) throws HybridException {
        HybridFeature hybridFeature = (HybridFeature) this.eT.get(str);
        if (hybridFeature != null) {
            return hybridFeature;
        }
        Feature feature = this.eU.getFeature(str);
        if (feature != null) {
            HybridFeature h = h(str);
            h.setParams(feature.getParams());
            this.eT.put(str, h);
            return h;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("feature not declared: ");
        stringBuilder.append(str);
        throw new HybridException(Response.CODE_FEATURE_ERROR, stringBuilder.toString());
    }
}
