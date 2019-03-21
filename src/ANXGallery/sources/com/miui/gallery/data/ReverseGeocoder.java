package com.miui.gallery.data;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

public class ReverseGeocoder {
    private ConnectivityManager mConnectivityManager;
    private Context mContext;
    private Geocoder mGeocoder = new Geocoder(this.mContext);

    public ReverseGeocoder(Context context) {
        this.mContext = context;
        this.mConnectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
    }

    public Address lookupAddress(double latitude, double longitude, boolean useCache, JobContext jc) {
        Throwable e;
        Throwable th;
        long locationKey = (long) (((((90.0d + latitude) * 2.0d) * 90.0d) + (180.0d + longitude)) * 6378137.0d);
        byte[] cachedLocation = null;
        if (useCache) {
        }
        Address address = null;
        NetworkInfo networkInfo = this.mConnectivityManager.getActiveNetworkInfo();
        Locale locale;
        int numAddressLines;
        int i;
        if (cachedLocation != null && cachedLocation.length != 0) {
            DataInputStream dis = null;
            try {
                DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(cachedLocation));
                try {
                    if (jc.isCancelled()) {
                        BaseMiscUtil.closeSilently(dataInputStream);
                        return null;
                    }
                    String language = readUTF(dataInputStream);
                    String country = readUTF(dataInputStream);
                    String variant = readUTF(dataInputStream);
                    locale = null;
                    if (language != null) {
                        Locale locale2;
                        if (country == null) {
                            locale2 = new Locale(language);
                        } else if (variant == null) {
                            locale2 = new Locale(language, country);
                        } else {
                            locale2 = new Locale(language, country, variant);
                        }
                    }
                    if (locale.getLanguage().equals(Locale.getDefault().getLanguage())) {
                        Address address2 = new Address(locale);
                        try {
                            address2.setThoroughfare(readUTF(dataInputStream));
                            numAddressLines = dataInputStream.readInt();
                            for (i = 0; i < numAddressLines; i++) {
                                if (jc.isCancelled()) {
                                    BaseMiscUtil.closeSilently(dataInputStream);
                                    address = address2;
                                    return null;
                                }
                                address2.setAddressLine(i, readUTF(dataInputStream));
                            }
                            address2.setFeatureName(readUTF(dataInputStream));
                            address2.setLocality(readUTF(dataInputStream));
                            address2.setAdminArea(readUTF(dataInputStream));
                            address2.setSubAdminArea(readUTF(dataInputStream));
                            address2.setCountryName(readUTF(dataInputStream));
                            address2.setCountryCode(readUTF(dataInputStream));
                            address2.setPostalCode(readUTF(dataInputStream));
                            address2.setPhone(readUTF(dataInputStream));
                            address2.setUrl(readUTF(dataInputStream));
                            BaseMiscUtil.closeSilently(dataInputStream);
                            address = address2;
                        } catch (Exception e2) {
                            e = e2;
                            dis = dataInputStream;
                            address = address2;
                            try {
                                Log.w("ReverseGeocoder", e);
                                BaseMiscUtil.closeSilently(dis);
                                return address;
                            } catch (Throwable th2) {
                                th = th2;
                                BaseMiscUtil.closeSilently(dis);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            dis = dataInputStream;
                            address = address2;
                            BaseMiscUtil.closeSilently(dis);
                            throw th;
                        }
                    }
                    dataInputStream.close();
                    if (jc.isCancelled()) {
                        BaseMiscUtil.closeSilently(dataInputStream);
                        return null;
                    }
                    Address lookupAddress = lookupAddress(latitude, longitude, false, jc);
                    BaseMiscUtil.closeSilently(dataInputStream);
                    return lookupAddress;
                } catch (Exception e3) {
                    e = e3;
                    dis = dataInputStream;
                } catch (Throwable th4) {
                    th = th4;
                    dis = dataInputStream;
                    BaseMiscUtil.closeSilently(dis);
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                Log.w("ReverseGeocoder", e);
                BaseMiscUtil.closeSilently(dis);
                return address;
            }
        } else if (!CTA.canConnectNetwork() || networkInfo == null || !networkInfo.isConnected()) {
            return null;
        } else {
            DataOutputStream dos = null;
            try {
                if (jc.isCancelled()) {
                    BaseMiscUtil.closeSilently(null);
                    return null;
                }
                List<Address> addresses = this.mGeocoder.getFromLocation(latitude, longitude, 1);
                if (jc.isCancelled()) {
                    BaseMiscUtil.closeSilently(null);
                    return null;
                }
                if (!addresses.isEmpty()) {
                    address = (Address) addresses.get(0);
                    DataOutputStream dataOutputStream = new DataOutputStream(new ByteArrayOutputStream());
                    try {
                        locale = address.getLocale();
                        writeUTF(dataOutputStream, locale.getLanguage());
                        writeUTF(dataOutputStream, locale.getCountry());
                        writeUTF(dataOutputStream, locale.getVariant());
                        writeUTF(dataOutputStream, address.getThoroughfare());
                        numAddressLines = address.getMaxAddressLineIndex();
                        dataOutputStream.writeInt(numAddressLines);
                        for (i = 0; i < numAddressLines; i++) {
                            if (jc.isCancelled()) {
                                BaseMiscUtil.closeSilently(dataOutputStream);
                                return null;
                            }
                            writeUTF(dataOutputStream, address.getAddressLine(i));
                        }
                        writeUTF(dataOutputStream, address.getFeatureName());
                        writeUTF(dataOutputStream, address.getLocality());
                        writeUTF(dataOutputStream, address.getAdminArea());
                        writeUTF(dataOutputStream, address.getSubAdminArea());
                        writeUTF(dataOutputStream, address.getCountryName());
                        writeUTF(dataOutputStream, address.getCountryCode());
                        writeUTF(dataOutputStream, address.getPostalCode());
                        writeUTF(dataOutputStream, address.getPhone());
                        writeUTF(dataOutputStream, address.getUrl());
                        dataOutputStream.flush();
                        dos = dataOutputStream;
                    } catch (Exception e5) {
                        e = e5;
                        dos = dataOutputStream;
                        try {
                            Log.w("ReverseGeocoder", e);
                            BaseMiscUtil.closeSilently(dos);
                            return address;
                        } catch (Throwable th5) {
                            th = th5;
                            BaseMiscUtil.closeSilently(dos);
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        dos = dataOutputStream;
                        BaseMiscUtil.closeSilently(dos);
                        throw th;
                    }
                }
                BaseMiscUtil.closeSilently(dos);
            } catch (Exception e6) {
                e = e6;
            }
        }
        return address;
    }

    public static final void writeUTF(DataOutputStream dos, String string) throws IOException {
        if (string == null) {
            dos.writeUTF("");
        } else {
            dos.writeUTF(string);
        }
    }

    public static final String readUTF(DataInputStream dis) throws IOException {
        String retVal = dis.readUTF();
        if (retVal.length() == 0) {
            return null;
        }
        return retVal;
    }
}
