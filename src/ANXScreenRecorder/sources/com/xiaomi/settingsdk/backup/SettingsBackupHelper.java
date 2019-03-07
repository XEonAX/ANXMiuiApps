package com.xiaomi.settingsdk.backup;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.xiaomi.settingsdk.backup.data.DataPackage;
import com.xiaomi.settingsdk.backup.data.SettingItem;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.util.Collection;
import java.util.Map.Entry;
import miui.util.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SettingsBackupHelper {
    private static final String KEY_DATA = "data";
    private static final String KEY_VERSION = "version";
    private static final String TAG = "SettingsBackup";

    private SettingsBackupHelper() {
    }

    public static DataPackage backupSettings(Context context, ParcelFileDescriptor data, ICloudBackup settingsCloudBackup) throws IOException {
        IOException e;
        Throwable th;
        JSONException e2;
        DataPackage dataPackage = new DataPackage();
        settingsCloudBackup.onBackupSettings(context, dataPackage);
        JSONObject settingsJson = new JSONObject();
        JSONArray settingsArray = new JSONArray();
        Collection<SettingItem<?>> settingItems = dataPackage.getDataItems().values();
        FileOutputStream output = null;
        if (settingItems != null) {
            try {
                for (SettingItem<?> settingItem : settingItems) {
                    settingsArray.put(settingItem.toJson());
                }
                settingsJson.put(SettingsBackupConsts.EXTRA_PACKAGE_NAME, context.getPackageName());
                settingsJson.put("version", settingsCloudBackup.getCurrentVersion(context));
                settingsJson.put(KEY_DATA, settingsArray);
            } catch (IOException e3) {
                e = e3;
                try {
                    Log.e("SettingsBackup", "IOException in backupSettings", e);
                    IOUtils.closeQuietly(output);
                    return dataPackage;
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(output);
                    throw th;
                }
            } catch (JSONException e4) {
                e2 = e4;
                Log.e("SettingsBackup", "JSONException in backupSettings", e2);
                IOUtils.closeQuietly(output);
                return dataPackage;
            }
        }
        FileOutputStream output2 = new FileOutputStream(data.getFileDescriptor());
        try {
            output2.write(settingsJson.toString().getBytes("utf-8"));
            output2.flush();
            output2.close();
            IOUtils.closeQuietly(output2);
            output = output2;
        } catch (IOException e5) {
            e = e5;
            output = output2;
            Log.e("SettingsBackup", "IOException in backupSettings", e);
            IOUtils.closeQuietly(output);
            return dataPackage;
        } catch (JSONException e6) {
            e2 = e6;
            output = output2;
            Log.e("SettingsBackup", "JSONException in backupSettings", e2);
            IOUtils.closeQuietly(output);
            return dataPackage;
        } catch (Throwable th3) {
            th = th3;
            output = output2;
            IOUtils.closeQuietly(output);
            throw th;
        }
        return dataPackage;
    }

    public static void restoreSettings(Context context, ParcelFileDescriptor data, ICloudBackup settingsCloudBackup) throws IOException {
        IOException e;
        Throwable th;
        JSONException e2;
        BufferedReader reader = null;
        try {
            Reader reader2 = new BufferedReader(new FileReader(data.getFileDescriptor()));
            Reader reader3;
            try {
                StringBuilder stringBuilder = new StringBuilder();
                String ls = System.getProperty("line.separator");
                while (true) {
                    String line = reader2.readLine();
                    if (line == null) {
                        break;
                    }
                    stringBuilder.append(line);
                    stringBuilder.append(ls);
                }
                JSONObject settingsJson = new JSONObject(stringBuilder.toString());
                if (settingsJson.length() > 0) {
                    int backupVersion = settingsJson.optInt("version");
                    JSONArray settingsArray = settingsJson.optJSONArray(KEY_DATA);
                    DataPackage dataPackage = new DataPackage();
                    if (settingsArray != null) {
                        for (int i = 0; i < settingsArray.length(); i++) {
                            JSONObject itemJson = settingsArray.optJSONObject(i);
                            if (itemJson != null) {
                                SettingItem<?> settingItem = SettingItem.fromJson(itemJson);
                                dataPackage.addAbstractDataItem(settingItem.key, settingItem);
                            }
                        }
                    }
                    settingsCloudBackup.onRestoreSettings(context, dataPackage, backupVersion);
                }
                IOUtils.closeQuietly(reader2);
                reader3 = reader2;
            } catch (IOException e3) {
                e = e3;
                reader = reader2;
                try {
                    Log.e("SettingsBackup", "IOException in restoreSettings", e);
                    IOUtils.closeQuietly(reader);
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(reader);
                    throw th;
                }
            } catch (JSONException e4) {
                e2 = e4;
                reader3 = reader2;
                Log.e("SettingsBackup", "JSONException in restoreSettings", e2);
                IOUtils.closeQuietly(reader);
            } catch (Throwable th3) {
                th = th3;
                reader3 = reader2;
                IOUtils.closeQuietly(reader);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            Log.e("SettingsBackup", "IOException in restoreSettings", e);
            IOUtils.closeQuietly(reader);
        } catch (JSONException e6) {
            e2 = e6;
            Log.e("SettingsBackup", "JSONException in restoreSettings", e2);
            IOUtils.closeQuietly(reader);
        }
    }

    public static void restoreOneFile(String path, ParcelFileDescriptor data) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        InputStream fileInputStream = null;
        OutputStream fileOutputStream = null;
        try {
            OutputStream fileOutputStream2;
            InputStream fileInputStream2 = new FileInputStream(data.getFileDescriptor());
            try {
                new File(path.substring(0, path.lastIndexOf(File.separator))).mkdirs();
                fileOutputStream2 = new FileOutputStream(new File(path));
            } catch (FileNotFoundException e3) {
                e = e3;
                fileInputStream = fileInputStream2;
                try {
                    Log.e("SettingsBackup", "FileNotFoundException in restoreFiles: " + path, e);
                    IOUtils.closeQuietly(fileInputStream);
                    IOUtils.closeQuietly(fileOutputStream);
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(fileInputStream);
                    IOUtils.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (IOException e4) {
                e2 = e4;
                fileInputStream = fileInputStream2;
                Log.e("SettingsBackup", "IOException in restoreFiles: " + path, e2);
                IOUtils.closeQuietly(fileInputStream);
                IOUtils.closeQuietly(fileOutputStream);
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = fileInputStream2;
                IOUtils.closeQuietly(fileInputStream);
                IOUtils.closeQuietly(fileOutputStream);
                throw th;
            }
            try {
                byte[] buffer = new byte[1024];
                while (true) {
                    int length = fileInputStream2.read(buffer);
                    if (length > 0) {
                        fileOutputStream2.write(buffer, 0, length);
                    } else {
                        fileOutputStream2.flush();
                        IOUtils.closeQuietly(fileInputStream2);
                        IOUtils.closeQuietly(fileOutputStream2);
                        fileOutputStream = fileOutputStream2;
                        fileInputStream = fileInputStream2;
                        return;
                    }
                }
            } catch (FileNotFoundException e5) {
                e = e5;
                fileOutputStream = fileOutputStream2;
                fileInputStream = fileInputStream2;
                Log.e("SettingsBackup", "FileNotFoundException in restoreFiles: " + path, e);
                IOUtils.closeQuietly(fileInputStream);
                IOUtils.closeQuietly(fileOutputStream);
            } catch (IOException e6) {
                e2 = e6;
                fileOutputStream = fileOutputStream2;
                fileInputStream = fileInputStream2;
                Log.e("SettingsBackup", "IOException in restoreFiles: " + path, e2);
                IOUtils.closeQuietly(fileInputStream);
                IOUtils.closeQuietly(fileOutputStream);
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = fileOutputStream2;
                fileInputStream = fileInputStream2;
                IOUtils.closeQuietly(fileInputStream);
                IOUtils.closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            Log.e("SettingsBackup", "FileNotFoundException in restoreFiles: " + path, e);
            IOUtils.closeQuietly(fileInputStream);
            IOUtils.closeQuietly(fileOutputStream);
        } catch (IOException e8) {
            e2 = e8;
            Log.e("SettingsBackup", "IOException in restoreFiles: " + path, e2);
            IOUtils.closeQuietly(fileInputStream);
            IOUtils.closeQuietly(fileOutputStream);
        }
    }

    public static void restoreFiles(DataPackage dataPackage) {
        for (Entry<String, ParcelFileDescriptor> entry : dataPackage.getFileItems().entrySet()) {
            restoreOneFile((String) entry.getKey(), (ParcelFileDescriptor) entry.getValue());
        }
    }
}
