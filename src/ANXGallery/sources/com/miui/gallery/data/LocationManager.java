package com.miui.gallery.data;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.SystemClock;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.UriUtil;
import com.miui.os.Rom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import miui.util.C0014Pools;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class LocationManager {
    private static final String ALIAS_EXIF_GPS_VALID = String.format("((%s NOT NULL AND %s NOT NULL) or %s NOT NULL)", new Object[]{"exifGPSLatitude", "exifGPSLongitude", "extraGPS"});
    private static final String ALIAS_LOCATION_INFO_INVALID = String.format("(%s IS NULL)", new Object[]{"address"});
    private static final Locale FIXED_ADDRESS_LOCALE = Locale.ENGLISH;
    private static final HashMap<String, String> INVALID_NAME = new HashMap();
    private static final String[] LOCATION_INFO_PROJECTION = new String[]{"_id", "exifGPSLatitude", "exifGPSLatitudeRef", "exifGPSLongitude", "exifGPSLongitudeRef", "location", "address", "extraGPS"};
    private static final String LOCATION_INFO_SELECTION = (ALIAS_EXIF_GPS_VALID + " AND " + ALIAS_LOCATION_INFO_INVALID);
    private static LocationManager mInstance;
    private final String CONNECTOR = GalleryApp.sGetAndroidContext().getString(R.string.and);
    private final String SEPARATOR = GalleryApp.sGetAndroidContext().getString(R.string.name_split);
    private AddressCache mAddressCache = new AddressCache(this, null);
    private ConcurrentHashMap<String, String> mMediaGpsInfoStage = new ConcurrentHashMap();

    private class AddressCache extends ArrayList<CacheItem> {
        private AddressCache() {
        }

        /* synthetic */ AddressCache(LocationManager x0, AnonymousClass1 x1) {
            this();
        }

        public synchronized void put(Locale locale, double lat, double lng, Address address) {
            if (address != null) {
                CacheItem item = new CacheItem(LocationManager.this, null);
                item.locale = locale;
                item.lat = lat;
                item.lng = lng;
                item.address = address;
                add(item);
            }
        }

        public synchronized CacheItem get(Locale locale, double lat, double lng) {
            CacheItem item;
            int count = size();
            for (int i = 0; i < count; i++) {
                item = (CacheItem) get(i);
                if (locale == null || item.locale == null || locale.equals(item.locale)) {
                    double distance = distance(item.lat, item.lng, lat, lng);
                    if (distance < 50.0d) {
                        item.distance = (int) distance;
                        break;
                    }
                }
            }
            item = null;
            return item;
        }

        private double distance(double startLat, double startLng, double endLat, double endLng) {
            double lat1 = 0.017453292519943295d * startLat;
            double lat2 = 0.017453292519943295d * endLat;
            return 1000.0d * (Math.acos((Math.sin(lat1) * Math.sin(lat2)) + ((Math.cos(lat1) * Math.cos(lat2)) * Math.cos((0.017453292519943295d * endLng) - (0.017453292519943295d * startLng)))) * 6371.0d);
        }
    }

    public static class AddressParser {
        public static String toJson(List<Address> addressList) throws JSONException {
            if (!BaseMiscUtil.isValid(addressList)) {
                return null;
            }
            JSONArray array = new JSONArray();
            for (Address address : addressList) {
                array.put(toJson(address));
            }
            return array.toString();
        }

        public static JSONObject toJson(Address address) throws JSONException {
            if (address == null) {
                return null;
            }
            JSONObject data = new JSONObject();
            data.putOpt("locale", LocaleParser.toString(address.getLocale()));
            data.putOpt("countryName", address.getCountryName());
            data.putOpt("admin", address.getAdminArea());
            data.putOpt("subAdmin", address.getSubAdminArea());
            data.putOpt("locality", address.getLocality());
            data.putOpt("subLocality", address.getSubLocality());
            data.putOpt("thoroughfare", address.getThoroughfare());
            data.putOpt("subThoroughfare", address.getSubThoroughfare());
            int maxAddressLines = Math.min(address.getMaxAddressLineIndex() + 1, 5);
            JSONArray addressLines = null;
            for (int i = 0; i < maxAddressLines; i++) {
                if (addressLines == null) {
                    addressLines = new JSONArray();
                }
                addressLines.put(address.getAddressLine(i));
            }
            data.putOpt("addressLines", addressLines);
            return data;
        }

        public static Address fromJson(String json) throws JSONException {
            if (json == null) {
                return null;
            }
            return fromJson(new JSONObject(json));
        }

        public static Address fromJson(JSONObject data) throws JSONException {
            if (data == null) {
                return null;
            }
            Address address = new Address(getLocaleFromJson(data));
            address.setCountryName(data.optString("countryName"));
            address.setAdminArea(data.optString("admin"));
            address.setSubAdminArea(data.optString("subAdmin"));
            address.setLocality(data.optString("locality"));
            address.setSubLocality(data.optString("subLocality"));
            address.setThoroughfare(data.optString("thoroughfare"));
            address.setSubThoroughfare(data.optString("subThoroughfare"));
            JSONArray addressLines = data.optJSONArray("addressLines");
            if (addressLines == null) {
                return address;
            }
            int length = addressLines.length();
            for (int i = 0; i < length; i++) {
                address.setAddressLine(i, addressLines.optString(i));
            }
            return address;
        }

        public static String getLocaleStringFromJson(JSONObject addressJsonObject) {
            return addressJsonObject.optString("locale");
        }

        public static Locale getLocaleFromJson(JSONObject addressJsonObject) {
            return LocaleParser.fromString(getLocaleStringFromJson(addressJsonObject)) == null ? Locale.getDefault() : null;
        }
    }

    private class CacheItem {
        public Address address;
        public int distance;
        public double lat;
        public double lng;
        public Locale locale;

        private CacheItem() {
        }

        /* synthetic */ CacheItem(LocationManager x0, AnonymousClass1 x1) {
            this();
        }
    }

    private class CloudItem {
        public String address;
        public int delayTime;
        public long id;
        public double lat;
        public double lng;
        public String location;

        private CloudItem() {
        }

        /* synthetic */ CloudItem(LocationManager x0, AnonymousClass1 x1) {
            this();
        }
    }

    private static class ExtraGps {
        public int delayTime;
        public float lat;
        public float lng;

        private ExtraGps() {
        }

        /* synthetic */ ExtraGps(AnonymousClass1 x0) {
            this();
        }
    }

    public static class LocaleParser {
        public static Locale fromString(String localeString) {
            if (TextUtils.isEmpty(localeString)) {
                return null;
            }
            String[] parts = localeString.split("_");
            if (parts.length <= 0 || parts[0] == null) {
                return null;
            }
            String language = parts[0];
            String country = null;
            String variant = null;
            if (parts.length > 1) {
                country = parts[1];
            }
            if (parts.length > 2) {
                variant = parts[2];
            }
            if (country == null) {
                return new Locale(language);
            }
            if (variant == null) {
                return new Locale(language, country);
            }
            return new Locale(language, country, variant);
        }

        public static String toString(Locale locale) {
            if (locale == null) {
                return null;
            }
            String language = locale.getLanguage();
            String country = locale.getCountry();
            String variant = locale.getVariant();
            StringBuilder builder = new StringBuilder().append(language);
            if (!TextUtils.isEmpty(country)) {
                builder.append("_").append(country);
                if (!TextUtils.isEmpty(variant)) {
                    builder.append("_").append(variant);
                }
            }
            return builder.toString();
        }
    }

    private class Statistics {
        public int addressNull;
        public int cacheDistance;
        public int cacheHit;
        public int cost;
        public int count;
        public int error;
        public int latLngInvalid;
        public int saveFail;
        private long startTime;

        private Statistics() {
            this.count = 0;
            this.cacheHit = 0;
            this.cost = 0;
            this.error = 0;
            this.latLngInvalid = 0;
            this.addressNull = 0;
            this.saveFail = 0;
            this.startTime = 0;
        }

        /* synthetic */ Statistics(LocationManager x0, AnonymousClass1 x1) {
            this();
        }

        public int getAverageCost() {
            int count = (this.count - this.cacheHit) - this.error;
            if (count <= 0 || this.cost <= 0) {
                return 0;
            }
            return this.cost / count;
        }

        public int getCacheHitPercent() {
            if (this.count <= 0 || this.cacheHit > this.count) {
                return 0;
            }
            return (int) ((100.0f * ((float) this.cacheHit)) / ((float) this.count));
        }

        public void start() {
            this.startTime = System.currentTimeMillis();
        }

        public int getTotalTime() {
            if (this.startTime > 0) {
                return (int) ((System.currentTimeMillis() - this.startTime) / 1000);
            }
            return 0;
        }

        public int getAvgCacheDistance() {
            if (this.cacheDistance <= 0 || this.cacheHit <= 0) {
                return 0;
            }
            return this.cacheDistance / this.cacheHit;
        }
    }

    static {
        INVALID_NAME.put("奇纳", "中国");
    }

    private LocationManager() {
    }

    public static synchronized LocationManager getInstance() {
        LocationManager locationManager;
        synchronized (LocationManager.class) {
            if (mInstance == null) {
                mInstance = new LocationManager();
            }
            locationManager = mInstance;
        }
        return locationManager;
    }

    public void loadAllLocation() {
        if (Geocoder.isPresent()) {
            Log.d("LocationManager", "loadAllLocation starts");
            checkVersionAndUpgrade();
            Context context = GalleryApp.sGetAndroidContext();
            if (!CTA.canConnectNetwork()) {
                Log.d("LocationManager", "CTA is not available");
                return;
            } else if (isNetworkAvailable()) {
                int limitNum = CloudControlStrategyHelper.getLocationStrategy().getDailyUpdateLimit();
                if (limitNum <= 0) {
                    Log.d("LocationManager", "CloudControl limit is 0");
                    return;
                }
                ArrayList<CloudItem> list = (ArrayList) SafeDBUtil.safeQuery(context, UriUtil.appendLimit(Cloud.CLOUD_URI, limitNum), LOCATION_INFO_PROJECTION, LOCATION_INFO_SELECTION, null, "mixedDateTime DESC", new QueryHandler<ArrayList<CloudItem>>() {
                    public ArrayList<CloudItem> handle(Cursor cursor) {
                        ArrayList<CloudItem> list = null;
                        if (cursor == null || !cursor.moveToFirst()) {
                            return list;
                        }
                        list = new ArrayList();
                        do {
                            list.add(LocationManager.this.parseCursor(cursor));
                        } while (cursor.moveToNext());
                        return list;
                    }
                });
                int count = 0;
                if (BaseMiscUtil.isValid(list)) {
                    Log.d("LocationManager", "loadAllLocation size:" + list.size());
                    Statistics stat = new Statistics(this, null);
                    stat.start();
                    stat.count = list.size();
                    try {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            CloudItem item = (CloudItem) it.next();
                            if (!isNetworkAvailable()) {
                                Log.d("LocationManager", "Network is not available");
                                break;
                            } else if (loadLocationForItem(context, item, false, stat)) {
                                count++;
                            } else {
                                stat.error++;
                            }
                        }
                    } catch (Exception e) {
                        Log.e("LocationManager", "loadAllLocation occur exception:" + e.getMessage());
                    }
                    if (count > 0 || stat.error > 0) {
                        recordStatistics(stat);
                        if (count > 0 && isSyncable()) {
                            SyncUtil.requestSync(context);
                        }
                    }
                }
                Log.d("LocationManager", "loadAllLocation success %s", Integer.valueOf(count));
                return;
            } else {
                Log.d("LocationManager", "Network is not available");
                return;
            }
        }
        BaseSamplingStatHelper.recordErrorEvent("location_manager", "location_manager_geocoder_error", BaseSamplingStatHelper.generatorCommonParams());
        Log.w("LocationManager", "loadAllLocation, geocoder is not present.");
    }

    public void loadLocationAsync(final long cloudId) {
        ThreadManager.getNetworkPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                LocationManager.this.loadLocation(cloudId);
                return null;
            }
        });
    }

    public void loadLocation(long cloudId) {
        if (Geocoder.isPresent()) {
            Context context = GalleryApp.sGetAndroidContext();
            if (!CTA.canConnectNetwork()) {
                Log.d("LocationManager", "CTA is not available");
                return;
            } else if (NetworkUtils.isNetworkConnected()) {
                CloudItem item = (CloudItem) SafeDBUtil.safeQuery(context, Cloud.CLOUD_URI, LOCATION_INFO_PROJECTION, "_id=? AND " + LOCATION_INFO_SELECTION, new String[]{String.valueOf(cloudId)}, null, new QueryHandler<CloudItem>() {
                    public CloudItem handle(Cursor cursor) {
                        if (cursor == null || !cursor.moveToFirst()) {
                            return null;
                        }
                        return LocationManager.this.parseCursor(cursor);
                    }
                });
                boolean result = false;
                if (item != null) {
                    try {
                        result = loadLocationForItem(context, item, true, null);
                    } catch (Exception e) {
                        Log.e("LocationManager", "loadLocation occur exception:" + e.getMessage());
                    }
                }
                Log.d("LocationManager", "loadLocation success %s", Boolean.valueOf(result));
                return;
            } else {
                Log.d("LocationManager", "Network is not available");
                return;
            }
        }
        Log.w("LocationManager", "loadLocation, geocoder is not present.");
    }

    public void appendDefaultLocationValues(ContentValues values) {
        Context context = GalleryApp.sGetAndroidContext();
        String latitude = values.getAsString("exifGPSLatitude");
        String latitudeRef = values.getAsString("exifGPSLatitudeRef");
        String longitude = values.getAsString("exifGPSLongitude");
        String longitudeRef = values.getAsString("exifGPSLongitudeRef");
        String extraGps = values.getAsString("extraGPS");
        double lat = 0.0d;
        double lng = 0.0d;
        boolean hasLatLng = false;
        if (!TextUtils.isEmpty(latitude) && !TextUtils.isEmpty(longitude)) {
            hasLatLng = true;
            lat = LocationUtil.convertRationalLatLonToDouble(latitude, latitudeRef);
            lng = LocationUtil.convertRationalLatLonToDouble(longitude, longitudeRef);
        } else if (!TextUtils.isEmpty(extraGps)) {
            ExtraGps result = parseGpsString(extraGps);
            if (result != null) {
                hasLatLng = true;
                lat = (double) result.lat;
                lng = (double) result.lng;
            }
        }
        if (hasLatLng) {
            String location = CitySearcher.getInstance().decode(new Coordinate(lat, lng));
            if (LocationUtil.isLocationValidate(location)) {
                values.put("location", LocationUtil.getCityNameFromRes(context, location));
            }
        }
    }

    public void recordMediaLocation(String path, Intent intent) {
        if (TextUtils.isEmpty(path) || intent == null) {
            Log.e("LocationManager", "recordMediaLocation path or intent null");
            return;
        }
        HashMap<String, String> params;
        Location cacheLocation = (Location) intent.getParcelableExtra("extra_cache_location");
        if (intent.hasExtra("extra_location_option")) {
            boolean noLocation = intent.hasExtra("extra_cache_location");
            boolean option = intent.getBooleanExtra("extra_location_option", true);
            int result = noLocation ? option ? cacheLocation == null ? 3 : 2 : 1 : 0;
            params = new HashMap();
            params.put("status", String.valueOf(result));
            BaseSamplingStatHelper.recordCountEvent("location_manager", "location_manager_gps_status", params);
            String str = "LocationManager";
            String str2 = "record location| no location: %s, cache Location not null: %s, option: %s, result: %s";
            Object[] objArr = new Object[4];
            objArr[0] = Boolean.valueOf(noLocation);
            objArr[1] = Boolean.valueOf(cacheLocation != null);
            objArr[2] = Boolean.valueOf(option);
            objArr[3] = Integer.valueOf(result);
            Log.d(str, str2, objArr);
        }
        if (cacheLocation != null) {
            long delay = (SystemClock.elapsedRealtimeNanos() - cacheLocation.getElapsedRealtimeNanos()) / 60000000000L;
            params = new HashMap();
            params.put("delay", String.valueOf(delay));
            BaseSamplingStatHelper.recordCountEvent("location_manager", "location_manager_gps_delay_min", params);
            if (delay < 0 || delay > 60) {
                Log.d("LocationManager", "record location out of date %s min", Long.valueOf(delay));
                return;
            }
            Log.d("LocationManager", "record location| delay %s min", Long.valueOf(delay));
            this.mMediaGpsInfoStage.put(path, formatExtraGpsString(cacheLocation.getLatitude(), cacheLocation.getLongitude(), delay));
        }
    }

    public void appendExtraGpsInfo(String path, ContentValues values) {
        String extraGps = (String) this.mMediaGpsInfoStage.remove(path);
        if (extraGps != null) {
            String latitude = values.getAsString("exifGPSLatitude");
            String longitude = values.getAsString("exifGPSLongitude");
            if (TextUtils.isEmpty(latitude) || TextUtils.isEmpty(longitude)) {
                values.put("extraGPS", extraGps);
            }
        }
    }

    public String subToCity(String location) {
        StringBuilder builder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        String[] segments = segmentLocation(location);
        if (segments != null) {
            if (segments.length == 1) {
                builder.append("中国").append(segments[0]);
            } else {
                int cityIndex = Math.min(3, segments.length);
                for (int i = 0; i < cityIndex; i++) {
                    builder.append(segments[i]);
                }
            }
        }
        String result = builder.length() == 0 ? null : builder.toString();
        C0014Pools.getStringBuilderPool().release(builder);
        return result;
    }

    public String generateTitleLine(String location) {
        if (TextUtils.isEmpty(location) || location.indexOf("/") == -1) {
            return location;
        }
        List list = new ArrayList(1);
        list.add(location);
        return generateTitleLine(list);
    }

    public String generateTitleLine(List<String> locations) {
        if (!BaseMiscUtil.isValid(locations)) {
            return null;
        }
        int count = locations.size();
        boolean hasMultiParts = false;
        String[][] areas = new String[count][];
        int i = 0;
        int areaLength = 0;
        while (i < count) {
            int areaLength2;
            String[] segments = segmentLocation((String) locations.get(i));
            if (segments != null) {
                int i2;
                areaLength2 = areaLength + 1;
                areas[areaLength] = segments;
                if (segments.length > 1) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                hasMultiParts |= i2;
            } else {
                areaLength2 = areaLength;
            }
            i++;
            areaLength = areaLength2;
        }
        String name;
        if (hasMultiParts) {
            StringBuilder result = new StringBuilder();
            List<String> mNamesOfArea = new ArrayList(areaLength);
            String preName = "";
            for (i = 0; i < 6; i++) {
                getNamesOfArea(areas, areaLength, i, mNamesOfArea);
                if (mNamesOfArea.size() > 1) {
                    if (result.length() > 0) {
                        result.append("-");
                    }
                    return result.append(formatAreaNames(mNamesOfArea)).toString();
                }
                if (mNamesOfArea.size() == 1) {
                    name = (String) mNamesOfArea.get(0);
                    if (!preName.equals(name)) {
                        preName = name;
                        if (i != 0 || !"中国".equals(name)) {
                            if (result.length() > 0) {
                                result.append(this.SEPARATOR);
                            }
                            result.append(name);
                        }
                    }
                }
            }
            return result.toString();
        }
        String result2 = "";
        for (i = 0; i < areaLength; i++) {
            name = areas[i][0];
            if (LocationUtil.isLocationValidate(name) && !result2.contains(name)) {
                if (result2.length() > 0) {
                    result2 = result2 + this.SEPARATOR;
                }
                result2 = result2 + name;
            }
        }
        return result2;
    }

    public static String formatAddress(JSONArray addressList, String extraGps) {
        if (addressList == null || addressList.length() <= 0) {
            return null;
        }
        JSONObject address = null;
        try {
            Locale locale = Locale.getDefault();
            for (int i = addressList.length() - 1; i >= 0; i--) {
                address = addressList.getJSONObject(i);
                if (LocaleParser.toString(locale).equals(AddressParser.getLocaleStringFromJson(address))) {
                    break;
                }
            }
            return formatAddress(AddressParser.fromJson(address), getAddressTargetLevel(extraGps));
        } catch (Object e) {
            Log.e("LocationManager", "formatAddress error.", e);
            return null;
        }
    }

    public static String formatAddress(String address, String extraGps) {
        String str = null;
        if (address == null) {
            return str;
        }
        try {
            return formatAddress(AddressParser.fromJson(address), getAddressTargetLevel(extraGps));
        } catch (Object e) {
            Log.e("LocationManager", "formatAddress error.", e);
            return str;
        }
    }

    private static int getAddressTargetLevel(String extraGps) {
        if (TextUtils.isEmpty(extraGps)) {
            return 6;
        }
        ExtraGps result = parseGpsString(extraGps);
        if (result != null) {
            return ensureAreaLevel(result.delayTime);
        }
        return 0;
    }

    private static void getNamesOfArea(String[][] areas, int length, int areaIndex, List<String> out) {
        out.clear();
        for (int i = 0; i < length; i++) {
            if (areas[i].length == 6) {
                String name = areas[i][areaIndex];
                if (!(TextUtils.isEmpty(name) || out.contains(name))) {
                    out.add(name);
                }
            }
        }
    }

    private String formatAreaNames(List<String> names) {
        if (!BaseMiscUtil.isValid(names)) {
            return null;
        }
        int length = names.size();
        if (length == 1) {
            return (String) names.get(0);
        }
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < length - 2; i++) {
            builder.append((String) names.get(i)).append(this.SEPARATOR);
        }
        builder.append((String) names.get(length - 2)).append(this.CONNECTOR).append((String) names.get(length - 1));
        return builder.toString();
    }

    public static String[] segmentLocation(String location) {
        if (location == null) {
            return null;
        }
        String[] segments = location.split("/", -1);
        if (segments.length == 1 || segments.length == 6) {
            return segments;
        }
        Log.e("LocationManager", "the length of location is not correct. %s", Integer.valueOf(segments.length));
        return null;
    }

    private static int ensureAreaLevel(int delayTime) {
        if (delayTime == 0) {
            return 6;
        }
        if (delayTime < 15) {
            return 4;
        }
        if (delayTime < 60) {
            return 3;
        }
        return 0;
    }

    private static String formatAddress(Address address, int targetLevel) {
        if (address == null) {
            return null;
        }
        StringBuilder result = new StringBuilder();
        result.append(obtainArea(address, 0, targetLevel)).append("/").append(obtainArea(address, 1, targetLevel)).append("/").append(obtainArea(address, 2, targetLevel)).append("/").append(obtainArea(address, 3, targetLevel)).append("/").append(obtainArea(address, 4, targetLevel)).append("/");
        String thoroughfare = obtainArea(address, 5, targetLevel);
        result.append(thoroughfare);
        String subThoroughfare = obtainArea(address, 6, targetLevel);
        if (!TextUtils.equals(thoroughfare, subThoroughfare)) {
            result.append(subThoroughfare);
        }
        return result.toString();
    }

    private static String obtainArea(Address address, int level, int targetLevel) {
        if (level <= targetLevel) {
            return obtainString(getArea(address, level));
        }
        return "";
    }

    private static String obtainString(String value) {
        return obtainString(value, "");
    }

    private static String obtainString(String value, String defValue) {
        return value == null ? defValue : value;
    }

    private static String getArea(Address address, int areaLevel) {
        switch (areaLevel) {
            case 0:
                return address.getCountryName();
            case 1:
                return address.getAdminArea();
            case 2:
                return address.getSubAdminArea();
            case 3:
                return address.getLocality();
            case 4:
                return address.getSubLocality();
            case 5:
                return address.getThoroughfare();
            case 6:
                return address.getSubThoroughfare();
            default:
                return null;
        }
    }

    private boolean isNetworkAvailable() {
        return NetworkUtils.isNetworkConnected() && !NetworkUtils.isActiveNetworkMetered();
    }

    public static String formatExifGpsString(String lat, String lng, String latRef, String lngRef) {
        if (TextUtils.isEmpty(lat) || TextUtils.isEmpty(lng)) {
            return "";
        }
        return String.format("%s,%s", new Object[]{Double.valueOf(LocationUtil.convertRationalLatLonToDouble(lat, latRef)), Double.valueOf(LocationUtil.convertRationalLatLonToDouble(lng, lngRef))});
    }

    private static String formatExtraGpsString(double lat, double lng, long delay) {
        return String.format("%s,%s,%s", new Object[]{Double.valueOf(lat), Double.valueOf(lng), Long.valueOf(delay)});
    }

    private static ExtraGps parseGpsString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] array = str.split(",");
        int length = array.length;
        if (length != 2 && length != 3) {
            return null;
        }
        ExtraGps result = new ExtraGps();
        try {
            result.lat = Float.valueOf(array[0]).floatValue();
            result.lng = Float.valueOf(array[1]).floatValue();
            if (length <= 2) {
                return result;
            }
            result.delayTime = Integer.valueOf(array[2]).intValue();
            return result;
        } catch (Exception e) {
            return null;
        }
    }

    private static void recordStatistics(Statistics stat) {
        HashMap<String, String> params = new HashMap();
        params.put("count", String.valueOf(stat.count));
        params.put("error", String.valueOf(stat.error));
        params.put("costAvg", String.valueOf(stat.getAverageCost()));
        params.put("totalTime", String.valueOf(stat.getTotalTime()));
        params.put("cacheHitPercent", String.valueOf(stat.getCacheHitPercent()));
        params.put("cacheAvgDistance", String.valueOf(stat.getAvgCacheDistance()));
        params.put("latLngInvalid", String.valueOf(stat.latLngInvalid));
        params.put("addressNull", String.valueOf(stat.addressNull));
        params.put("saveFail", String.valueOf(stat.saveFail));
        Log.d("LocationManager", "loadLocations: %s", params.toString());
        BaseSamplingStatHelper.recordCountEvent("location_manager", "location_manager_load_stat", params);
    }

    private void checkVersionAndUpgrade() {
        int oldVersion = com.miui.gallery.preference.GalleryPreferences.LocationManager.getLocationDetailsVersion(0);
        if (oldVersion > 0 && oldVersion < 3 && isSyncable()) {
            Log.d("LocationManager", "On clear old addresses due to location manager upgrade");
            ContentValues values = new ContentValues();
            values.putNull("address");
            GalleryUtils.safeUpdate(Cloud.CLOUD_URI, values, null, null);
        }
        if (oldVersion != 3) {
            com.miui.gallery.preference.GalleryPreferences.LocationManager.setLocationDetailsVersion(3);
        }
    }

    private static boolean isSyncable() {
        return true;
    }

    private boolean loadLocationForItem(Context context, CloudItem item, boolean foreground, Statistics stat) throws Exception {
        if (stat == null) {
            Statistics statistics = new Statistics(this, null);
        }
        if (isLatLngValid(item.lat, item.lng)) {
            List addressList = getAddressList(context, item, foreground, stat);
            if (!BaseMiscUtil.isValid(addressList)) {
                return false;
            }
            String location = formatAddress((Address) addressList.get(0), ensureAreaLevel(item.delayTime));
            String addressJson = AddressParser.toJson(addressList);
            boolean result;
            ContentValues values;
            if (isSyncable()) {
                result = true;
                String updateValues = "";
                if (foreground) {
                    values = new ContentValues();
                    values.put("location", location);
                    values.put("address", addressJson);
                    result = SafeDBUtil.safeUpdate(context, Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(item.id)}) > 0;
                } else {
                    updateValues = String.format("%s=%s, %s=%s,", new Object[]{"location", DatabaseUtils.sqlEscapeString(location), "address", DatabaseUtils.sqlEscapeString(addressJson)});
                }
                if (result) {
                    String editedColumnsElement = GalleryCloudUtils.transformToEditedColumnsElement(70);
                    result = GalleryUtils.safeExec(String.format("update %s set %s %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s=%s", new Object[]{"cloud", updateValues, "editedColumns", "editedColumns", editedColumnsElement, editedColumnsElement, editedColumnsElement, "_id", Long.valueOf(item.id)}));
                    if (result) {
                        return result;
                    }
                    Log.w("LocationManager", "Save location info and update edited column failed.");
                    stat.saveFail++;
                    return result;
                }
                Log.w("LocationManager", "Save location info failed.");
                stat.saveFail++;
                return false;
            }
            values = new ContentValues();
            values.put("location", location);
            values.put("address", addressJson);
            result = SafeDBUtil.safeUpdate(context, Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(item.id)}) > 0;
            if (result) {
                return result;
            }
            Log.w("LocationManager", "Save location info failed.");
            stat.saveFail++;
            return result;
        }
        Log.w("LocationManager", "Lat or lng not valid.");
        stat.latLngInvalid++;
        return false;
    }

    private List<Address> getAddressList(Context context, CloudItem item, boolean foreground, Statistics stat) throws Exception {
        Locale locale = Locale.getDefault();
        Address defaultLocaleAddress = getAddress(context, locale, item, foreground, stat);
        if (defaultLocaleAddress == null) {
            Log.w("LocationManager", "default address not valid.");
            stat.addressNull++;
            return null;
        } else if (!Rom.IS_INTERNATIONAL || locale.equals(FIXED_ADDRESS_LOCALE)) {
            return Collections.singletonList(defaultLocaleAddress);
        } else {
            if (getAddress(context, FIXED_ADDRESS_LOCALE, item, foreground, stat) == null) {
                Log.w("LocationManager", "fixed address not valid.");
                stat.addressNull++;
                return null;
            }
            return Arrays.asList(new Address[]{defaultLocaleAddress, getAddress(context, FIXED_ADDRESS_LOCALE, item, foreground, stat)});
        }
    }

    private Address getAddress(Context context, Locale locale, CloudItem item, boolean foreground, Statistics stat) throws Exception {
        Address address = null;
        CacheItem cacheItem = this.mAddressCache.get(locale, item.lat, item.lng);
        if (cacheItem != null) {
            address = cacheItem.address;
            stat.cacheHit++;
            stat.cacheDistance += cacheItem.distance;
            if (foreground) {
                Log.d("LocationManager", "cache hit.");
            }
        }
        if (address != null) {
            return address;
        }
        Geocoder geocoder = new Geocoder(context, locale);
        long start = System.currentTimeMillis();
        List<Address> addresses = geocoder.getFromLocation(item.lat, item.lng, 1);
        long cost = System.currentTimeMillis() - start;
        stat.cost = (int) (((long) stat.cost) + cost);
        if (foreground) {
            Log.d("LocationManager", "get location cost: %s", Long.valueOf(cost));
        }
        if (!BaseMiscUtil.isValid(addresses)) {
            return address;
        }
        address = fixAddressFault((Address) addresses.get(0));
        this.mAddressCache.put(locale, item.lat, item.lng, address);
        return address;
    }

    private static Address fixAddressFault(Address address) {
        if (address != null) {
            String fixed = (String) INVALID_NAME.get(address.getCountryName());
            if (fixed != null) {
                address.setCountryName(fixed);
            }
            String name = address.getThoroughfare();
            if (name != null && name.indexOf("/") > 0) {
                address.setThoroughfare(name.replaceAll("/", ""));
            }
            name = address.getSubThoroughfare();
            if (name != null && name.indexOf("/") > 0) {
                address.setSubThoroughfare(name.replaceAll("/", ""));
            }
        }
        return address;
    }

    private CloudItem parseCursor(Cursor cursor) {
        CloudItem item = new CloudItem(this, null);
        item.id = (long) cursor.getInt(0);
        item.location = cursor.getString(5);
        item.address = cursor.getString(6);
        String lat = cursor.getString(1);
        String latRef = cursor.getString(2);
        String lng = cursor.getString(3);
        String lngRef = cursor.getString(4);
        String extraGps = cursor.getString(7);
        if (TextUtils.isEmpty(lat) || TextUtils.isEmpty(lng)) {
            ExtraGps result = parseGpsString(extraGps);
            if (result != null) {
                item.lat = (double) result.lat;
                item.lng = (double) result.lng;
                item.delayTime = result.delayTime;
            }
        } else {
            item.lat = LocationUtil.convertRationalLatLonToDouble(lat, latRef);
            item.lng = LocationUtil.convertRationalLatLonToDouble(lng, lngRef);
        }
        return item;
    }

    private static boolean isLatLngValid(double latitude, double longitude) {
        return latitude >= -90.0d && latitude <= 90.0d && longitude >= -180.0d && longitude <= 180.0d;
    }
}
