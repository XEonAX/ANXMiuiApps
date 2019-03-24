package miui.bluetooth.ble;

import android.os.ParcelUuid;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import com.miui.internal.vip.utils.JsonParser;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;

public final class ScanRecord {
    private static final ParcelUuid BASE_UUID = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
    private static final int DATA_TYPE_FLAGS = 1;
    private static final int DATA_TYPE_LOCAL_NAME_COMPLETE = 9;
    private static final int DATA_TYPE_LOCAL_NAME_SHORT = 8;
    private static final int DATA_TYPE_MANUFACTURER_SPECIFIC_DATA = 255;
    private static final int DATA_TYPE_SERVICE_DATA = 22;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE = 7;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL = 6;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE = 3;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL = 2;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE = 5;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL = 4;
    private static final int DATA_TYPE_TX_POWER_LEVEL = 10;
    private static final String TAG = "ScanRecord";
    public static final int UUID_BYTES_128_BIT = 16;
    public static final int UUID_BYTES_16_BIT = 2;
    public static final int UUID_BYTES_32_BIT = 4;
    private final int mAdvertiseFlags;
    private final byte[] mBytes;
    private final String mDeviceName;
    private final SparseArray<byte[]> mManufacturerSpecificData;
    private final Map<ParcelUuid, byte[]> mServiceData;
    private final List<ParcelUuid> mServiceUuids;
    private final int mTxPowerLevel;

    public int getAdvertiseFlags() {
        return this.mAdvertiseFlags;
    }

    public List<ParcelUuid> getServiceUuids() {
        return this.mServiceUuids;
    }

    public SparseArray<byte[]> getManufacturerSpecificData() {
        return this.mManufacturerSpecificData;
    }

    public byte[] getManufacturerSpecificData(int manufacturerId) {
        return (byte[]) this.mManufacturerSpecificData.get(manufacturerId);
    }

    public Map<ParcelUuid, byte[]> getServiceData() {
        return this.mServiceData;
    }

    public byte[] getServiceData(ParcelUuid serviceDataUuid) {
        if (serviceDataUuid == null || this.mServiceData == null) {
            return null;
        }
        return (byte[]) this.mServiceData.get(serviceDataUuid);
    }

    public int getTxPowerLevel() {
        return this.mTxPowerLevel;
    }

    public String getDeviceName() {
        return this.mDeviceName;
    }

    public byte[] getBytes() {
        return this.mBytes;
    }

    private ScanRecord(List<ParcelUuid> serviceUuids, SparseArray<byte[]> manufacturerData, Map<ParcelUuid, byte[]> serviceData, int advertiseFlags, int txPowerLevel, String localName, byte[] bytes) {
        this.mServiceUuids = serviceUuids;
        this.mManufacturerSpecificData = manufacturerData;
        this.mServiceData = serviceData;
        this.mDeviceName = localName;
        this.mAdvertiseFlags = advertiseFlags;
        this.mTxPowerLevel = txPowerLevel;
        this.mBytes = bytes;
    }

    public static ScanRecord parseFromBytes(byte[] scanRecord) {
        List<ParcelUuid> list;
        String str;
        StringBuilder stringBuilder;
        byte[] bArr = scanRecord;
        if (bArr == null) {
            return null;
        }
        Map<ParcelUuid, byte[]> serviceData;
        List<ParcelUuid> serviceUuids = new ArrayList();
        SparseArray<byte[]> manufacturerData = new SparseArray();
        Map<ParcelUuid, byte[]> serviceData2 = new ArrayMap();
        int advertiseFlag = -1;
        String localName = null;
        int txPowerLevel = Integer.MIN_VALUE;
        int currentPos = 0;
        while (true) {
            serviceData = serviceData2;
            int i;
            try {
                if (currentPos < bArr.length) {
                    int currentPos2 = currentPos + 1;
                    try {
                        int length = bArr[currentPos] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA;
                        if (length == 0) {
                            i = currentPos2;
                        } else {
                            int dataLength = length - 1;
                            int currentPos3 = currentPos2 + 1;
                            try {
                                currentPos2 = bArr[currentPos2] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA;
                                if (currentPos2 == 22) {
                                    serviceData.put(parseUuidFrom(extractBytes(bArr, currentPos3, 2)), extractBytes(bArr, currentPos3 + 2, dataLength - 2));
                                } else if (currentPos2 != DATA_TYPE_MANUFACTURER_SPECIFIC_DATA) {
                                    switch (currentPos2) {
                                        case 1:
                                            advertiseFlag = bArr[currentPos3] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA;
                                            break;
                                        case 2:
                                        case 3:
                                            parseServiceUuid(bArr, currentPos3, dataLength, 2, serviceUuids);
                                            break;
                                        case 4:
                                        case 5:
                                            parseServiceUuid(bArr, currentPos3, dataLength, 4, serviceUuids);
                                            break;
                                        case 6:
                                        case 7:
                                            parseServiceUuid(bArr, currentPos3, dataLength, 16, serviceUuids);
                                            break;
                                        case 8:
                                        case 9:
                                            localName = new String(extractBytes(bArr, currentPos3, dataLength));
                                            break;
                                        case 10:
                                            txPowerLevel = bArr[currentPos3];
                                            break;
                                        default:
                                            break;
                                    }
                                } else {
                                    manufacturerData.put(((bArr[currentPos3 + 1] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA) << 8) + (DATA_TYPE_MANUFACTURER_SPECIFIC_DATA & bArr[currentPos3]), extractBytes(bArr, currentPos3 + 2, dataLength - 2));
                                }
                                currentPos = currentPos3 + dataLength;
                                serviceData2 = serviceData;
                            } catch (Exception e) {
                                list = serviceUuids;
                                i = currentPos3;
                                str = TAG;
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("unable to parse scan record: ");
                                stringBuilder.append(Arrays.toString(scanRecord));
                                Log.e(str, stringBuilder.toString());
                                return new ScanRecord(null, null, null, -1, Integer.MIN_VALUE, null, bArr);
                            }
                        }
                    } catch (Exception e2) {
                        list = serviceUuids;
                        i = currentPos2;
                    }
                }
            } catch (Exception e3) {
                i = currentPos;
            }
        }
        try {
            try {
                return new ScanRecord(serviceUuids.isEmpty() ? null : serviceUuids, manufacturerData, serviceData, advertiseFlag, txPowerLevel, localName, bArr);
            } catch (Exception e4) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("unable to parse scan record: ");
                stringBuilder.append(Arrays.toString(scanRecord));
                Log.e(str, stringBuilder.toString());
                return new ScanRecord(null, null, null, -1, Integer.MIN_VALUE, null, bArr);
            }
        } catch (Exception e5) {
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("unable to parse scan record: ");
            stringBuilder.append(Arrays.toString(scanRecord));
            Log.e(str, stringBuilder.toString());
            return new ScanRecord(null, null, null, -1, Integer.MIN_VALUE, null, bArr);
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ScanRecord [mAdvertiseFlags=");
        stringBuilder.append(this.mAdvertiseFlags);
        stringBuilder.append(", mServiceUuids=");
        stringBuilder.append(this.mServiceUuids);
        stringBuilder.append(", mManufacturerSpecificData=");
        stringBuilder.append(toString(this.mManufacturerSpecificData));
        stringBuilder.append(", mServiceData=");
        stringBuilder.append(toString(this.mServiceData));
        stringBuilder.append(", mTxPowerLevel=");
        stringBuilder.append(this.mTxPowerLevel);
        stringBuilder.append(", mDeviceName=");
        stringBuilder.append(this.mDeviceName);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    private static ParcelUuid parseUuidFrom(byte[] uuidBytes) {
        if (uuidBytes != null) {
            int length = uuidBytes.length;
            if (length != 2 && length != 4 && length != 16) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("uuidBytes length invalid - ");
                stringBuilder.append(length);
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (length == 16) {
                ByteBuffer buf = ByteBuffer.wrap(uuidBytes).order(ByteOrder.LITTLE_ENDIAN);
                return new ParcelUuid(new UUID(buf.getLong(8), buf.getLong(0)));
            } else {
                long shortUuid;
                if (length == 2) {
                    shortUuid = ((long) (uuidBytes[0] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA)) + ((long) ((uuidBytes[1] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA) << 8));
                } else {
                    shortUuid = ((long) ((uuidBytes[3] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA) << 24)) + ((((long) (uuidBytes[0] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA)) + ((long) ((uuidBytes[1] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA) << 8))) + ((long) ((uuidBytes[2] & DATA_TYPE_MANUFACTURER_SPECIFIC_DATA) << 16)));
                }
                return new ParcelUuid(new UUID(BASE_UUID.getUuid().getMostSignificantBits() + (shortUuid << 32), BASE_UUID.getUuid().getLeastSignificantBits()));
            }
        }
        throw new IllegalArgumentException("uuidBytes cannot be null");
    }

    private static int parseServiceUuid(byte[] scanRecord, int currentPos, int dataLength, int uuidLength, List<ParcelUuid> serviceUuids) {
        while (dataLength > 0) {
            serviceUuids.add(parseUuidFrom(extractBytes(scanRecord, currentPos, uuidLength)));
            dataLength -= uuidLength;
            currentPos += uuidLength;
        }
        return currentPos;
    }

    private static byte[] extractBytes(byte[] scanRecord, int start, int length) {
        byte[] bytes = new byte[length];
        System.arraycopy(scanRecord, start, bytes, 0, length);
        return bytes;
    }

    static String toString(SparseArray<byte[]> array) {
        if (array == null) {
            return "null";
        }
        if (array.size() == 0) {
            return JsonParser.EMPTY_OBJECT;
        }
        StringBuilder buffer = new StringBuilder();
        buffer.append('{');
        for (int i = 0; i < array.size(); i++) {
            buffer.append(array.keyAt(i));
            buffer.append("=");
            buffer.append(Arrays.toString((byte[]) array.valueAt(i)));
        }
        buffer.append('}');
        return buffer.toString();
    }

    static <T> String toString(Map<T, byte[]> map) {
        if (map == null) {
            return "null";
        }
        if (map.isEmpty()) {
            return JsonParser.EMPTY_OBJECT;
        }
        StringBuilder buffer = new StringBuilder();
        buffer.append('{');
        Iterator<Entry<T, byte[]>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Object key = ((Entry) it.next()).getKey();
            buffer.append(key);
            buffer.append("=");
            buffer.append(Arrays.toString((byte[]) map.get(key)));
            if (it.hasNext()) {
                buffer.append(", ");
            }
        }
        buffer.append('}');
        return buffer.toString();
    }
}
