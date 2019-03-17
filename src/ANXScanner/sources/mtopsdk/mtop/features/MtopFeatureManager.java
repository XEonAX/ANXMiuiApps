package mtopsdk.mtop.features;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;

public final class MtopFeatureManager {
    private static final String TAG = "mtopsdk.MtopFeatureManager";
    private static Map<MtopFeatureEnum, Boolean> mtopFeatureMap = new HashMap();

    public enum MtopFeatureEnum {
        SUPPORT_RELATIVE_URL(1),
        UNIT_INFO_FEATURE(2),
        DISABLE_WHITEBOX_SIGN(3),
        SUPPORT_UTDID_UNIT(4),
        DISABLE_X_COMMAND(5),
        SUPPORT_OPEN_ACCOUNT(6);
        
        long feature;

        public final long getFeature() {
            return this.feature;
        }

        private MtopFeatureEnum(long j) {
            this.feature = j;
        }
    }

    static {
        setMtopFeatureFlag(MtopFeatureEnum.DISABLE_X_COMMAND, true);
    }

    public static long getMtopTotalFeatures() {
        long j = 0;
        if (!mtopFeatureMap.isEmpty()) {
            try {
                for (Entry entry : mtopFeatureMap.entrySet()) {
                    long mtopFeatureValue;
                    if (((Boolean) entry.getValue()).booleanValue()) {
                        mtopFeatureValue = getMtopFeatureValue((MtopFeatureEnum) entry.getKey()) | j;
                    } else {
                        mtopFeatureValue = j;
                    }
                    j = mtopFeatureValue;
                }
            } catch (Exception e) {
                TBSdkLog.w(TAG, "[getMtopTotalFeatures] get mtop total features error.---" + e.toString());
            }
        }
        return j;
    }

    public static void setMtopFeatureFlag(MtopFeatureEnum mtopFeatureEnum, boolean z) {
        if (mtopFeatureEnum != null) {
            mtopFeatureMap.put(mtopFeatureEnum, Boolean.valueOf(z));
            if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                TBSdkLog.i(TAG, "[setMtopFeatureFlag] set feature=" + mtopFeatureEnum + " , openFlag=" + z);
            }
        }
    }

    public static long getMtopFeatureValue(MtopFeatureEnum mtopFeatureEnum) {
        if (mtopFeatureEnum == null) {
            return 0;
        }
        return (long) (1 << ((int) (mtopFeatureEnum.getFeature() - 1)));
    }
}
