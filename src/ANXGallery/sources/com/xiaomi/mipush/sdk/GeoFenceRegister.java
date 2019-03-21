package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.metoknlp.geofencing.GeoFencingServiceWrapper;
import com.xiaomi.xmpush.thrift.GeoFencing;
import com.xiaomi.xmpush.thrift.Location;

public class GeoFenceRegister {
    private final double GEOFENCE_RADIUS_MININUM = 0.0d;
    private final int GEOFENCE_REGISER_PERIOD_IMMORATAL = -1;
    private Context mContext;
    private GeoFencingServiceWrapper mGeoFencingServiceWrapper;

    public GeoFenceRegister(Context context) {
        this.mContext = context;
        initBinder();
    }

    private void initBinder() {
        this.mGeoFencingServiceWrapper = new GeoFencingServiceWrapper(this.mContext);
    }

    public boolean registerGeoFencer(GeoFencing geoFencing) {
        if (geoFencing == null) {
            return false;
        }
        if (geoFencing.getCircleCenter() != null && geoFencing.getCircleRadius() > 0.0d) {
            Location locationCenter = geoFencing.getCircleCenter();
            this.mGeoFencingServiceWrapper.registerFenceListener(this.mContext, locationCenter.getLatitude(), locationCenter.getLongitude(), (float) geoFencing.getCircleRadius(), -1, "com.xiaomi.xmsf", geoFencing.getId(), geoFencing.getCoordinateProvider().name());
        }
        return true;
    }

    public void unRegisterGeoFencer(String describe) {
        this.mGeoFencingServiceWrapper.unregisterFenceListener(this.mContext, "com.xiaomi.xmsf", describe);
    }
}
