package com.meicam.themehelper;

import android.content.Context;
import android.media.ExifInterface;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NvsParseHelper {
    private static final String TAG = "NvsParseHelper";

    public static ArrayList<NvsMusicFileDesc> readMusicFileList(Context context, String path) {
        String musicInfo = Utils.readFile(path + "/info.json", context.getAssets());
        if (musicInfo == null) {
            Log.d(TAG, "read music info json error!");
            return new ArrayList();
        }
        ArrayList<NvsMusicFileDesc> fileArray = new ArrayList();
        try {
            JSONArray array = new JSONObject(musicInfo).getJSONArray("musicfiles");
            for (int i = 0; i < array.length(); i++) {
                fileArray.add(GetMusicFileFromJsonObject(array.getJSONObject(i), path));
            }
            return fileArray;
        } catch (JSONException e) {
            e.printStackTrace();
            return fileArray;
        }
    }

    public static NvsMusicFileDesc GetMusicFileFromJsonObject(JSONObject object, String path) {
        JSONException e;
        NvsMusicFileDesc info = null;
        try {
            NvsMusicFileDesc info2 = new NvsMusicFileDesc();
            try {
                info2.id = path;
                info2.displayName = object.getString("name");
                info2.jsonFile = path + "/" + object.getString("json id") + ".json";
                info2.jsonFile10s = path + "/" + object.getString("json id10s") + ".json";
                info2.musicFile = path + "/" + object.getString("music id");
                info2.musicFile10s = path + "/" + object.getString("music id10s");
                return info2;
            } catch (JSONException e2) {
                e = e2;
                info = info2;
                e.printStackTrace();
                return info;
            }
        } catch (JSONException e3) {
            e = e3;
            e.printStackTrace();
            return info;
        }
    }

    public static long readMusicPoint(String jsonString, ArrayList<NvsMusicPointDesc> musicPoints, NvsTransDesc transDesc) {
        musicPoints.clear();
        long musicLen = -1;
        try {
            JSONObject fxDescobj = new JSONObject(jsonString);
            musicLen = fxDescobj.getLong("music duration") * 1000;
            JSONArray array = fxDescobj.getJSONArray("points");
            for (int i = 0; i < array.length(); i++) {
                try {
                    musicPoints.add(GetDescFromJsonObject(array.getJSONObject(i)));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            if (transDesc != null) {
                if (fxDescobj.has("fullSizeTrans")) {
                    transDesc.m_fulltransList = new ArrayList();
                    getTransByType(fxDescobj, "fullSizeTrans", transDesc.m_fulltransList);
                }
                if (fxDescobj.has("halfSizeTrans")) {
                    transDesc.m_halftransList = new ArrayList();
                    getTransByType(fxDescobj, "halfSizeTrans", transDesc.m_halftransList);
                }
                if (fxDescobj.has("h-fSizeTrans")) {
                    transDesc.m_hftransList = new ArrayList();
                    getTransByType(fxDescobj, "h-fSizeTrans", transDesc.m_hftransList);
                }
                if (fxDescobj.has("fullFx")) {
                    transDesc.m_fulltransFxList = new ArrayList();
                    getTransFxByType(fxDescobj, "fullFx", transDesc.m_fulltransFxList);
                }
                if (fxDescobj.has("halfFx")) {
                    transDesc.m_halftransFxList = new ArrayList();
                    getTransFxByType(fxDescobj, "halfFx", transDesc.m_halftransFxList);
                }
                if (fxDescobj.has("h-fFx")) {
                    transDesc.m_hftransFxList = new ArrayList();
                    getTransFxByType(fxDescobj, "h-fFx", transDesc.m_hftransFxList);
                }
                if (fxDescobj.has("f-hFx")) {
                    transDesc.m_fhtransFxList = new ArrayList();
                    getTransFxByType(fxDescobj, "f-hFx", transDesc.m_fhtransFxList);
                }
            }
            return musicLen;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return musicLen;
        }
    }

    public static NvsMusicPointDesc GetDescFromJsonObject(JSONObject object) throws JSONException {
        int i;
        NvsMusicPointDesc info = new NvsMusicPointDesc();
        info.cutPoint = object.getInt("cutPoint");
        info.transLen = object.getInt("transLen");
        if (object.has("transName")) {
            JSONArray transName = object.getJSONArray("transName");
            for (i = 0; i < transName.length(); i++) {
                info.transNames.add(transName.getJSONObject(i).getString("id"));
            }
        }
        if (object.has("fxName")) {
            JSONArray fxName = object.getJSONArray("fxName");
            for (i = 0; i < fxName.length(); i++) {
                info.fxNames.add(fxName.getJSONObject(i).getString("id"));
            }
        }
        return info;
    }

    private static void getTransByType(JSONObject fxDescobj, String type, ArrayList<String> list) throws JSONException {
        JSONArray array = fxDescobj.getJSONArray(type);
        if (array == null) {
            Log.d(TAG, "getTransByType error!");
            return;
        }
        for (int i = 0; i < array.length(); i++) {
            try {
                list.add(array.getJSONObject(i).getString("transName"));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private static void getTransFxByType(JSONObject fxDescobj, String type, ArrayList<String> list) throws JSONException {
        JSONArray array = fxDescobj.getJSONArray(type);
        if (array == null) {
            Log.d(TAG, "getTransFxByType error!");
            return;
        }
        for (int i = 0; i < array.length(); i++) {
            try {
                list.add(array.getJSONObject(i).getString("fxName"));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static void sortFileByModifyTime(ArrayList<NvsImageFileDesc> files) {
        Collections.sort(files, new Comparator<NvsImageFileDesc>() {
            public int compare(NvsImageFileDesc arg0, NvsImageFileDesc arg1) {
                if (arg0.fileLastTime < 0) {
                    arg0.fileLastTime = NvsParseHelper.getFileLastTime(arg0.filePath);
                }
                if (arg1.fileLastTime < 0) {
                    arg1.fileLastTime = NvsParseHelper.getFileLastTime(arg1.filePath);
                }
                if (VERSION.SDK_INT >= 19) {
                    return Long.compare(arg0.fileLastTime, arg1.fileLastTime);
                }
                if (arg0.fileLastTime > arg1.fileLastTime) {
                    return 1;
                }
                if (arg0.fileLastTime == arg1.fileLastTime) {
                    return 0;
                }
                return -1;
            }
        });
    }

    public static void sortFileByName(ArrayList<NvsImageFileDesc> files) {
        Collections.sort(files, new Comparator<NvsImageFileDesc>() {
            public int compare(NvsImageFileDesc arg0, NvsImageFileDesc arg1) {
                return arg1.filePath.compareTo(arg0.filePath);
            }
        });
    }

    public static void sortFileByScore(ArrayList<NvsImageFileDesc> files) {
        Collections.sort(files, new Comparator<NvsImageFileDesc>() {
            public int compare(NvsImageFileDesc arg0, NvsImageFileDesc arg1) {
                if (VERSION.SDK_INT >= 19) {
                    return Float.compare(arg0.score, arg1.score);
                }
                if (arg0.score > arg1.score) {
                    return -1;
                }
                if (arg0.score == arg1.score) {
                    return 0;
                }
                return 1;
            }
        });
    }

    public static long getFileLastTime(String filePath) {
        ExifInterface exif;
        try {
            exif = new ExifInterface(filePath);
        } catch (IOException e) {
            e.printStackTrace();
            exif = null;
        }
        if (exif != null) {
            String dataTime = exif.getAttribute("DateTime");
            if (dataTime != null) {
                Date d = null;
                try {
                    d = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss").parse(dataTime);
                } catch (ParseException e2) {
                    e2.printStackTrace();
                }
                if (d != null) {
                    return d.getTime();
                }
                try {
                    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(dataTime).getTime();
                } catch (ParseException e22) {
                    e22.printStackTrace();
                }
            }
        }
        try {
            return new File(filePath).lastModified();
        } catch (Exception e3) {
            e3.printStackTrace();
            return 0;
        }
    }
}
