package com.meicam.themehelper;

import java.util.ArrayList;

public class NvsMusicFileDesc {
    public String displayName;
    public String id;
    public boolean isDownloadFile = false;
    public String jsonFile;
    public String jsonFile10s;
    public String musicFile;
    public String musicFile10s;
    public long musicLen;
    public long musicLen10s;
    public ArrayList<NvsMusicPointDesc> pointsDesc = new ArrayList();
    public ArrayList<NvsMusicPointDesc> pointsDesc10s = new ArrayList();
    public NvsTransDesc transDesc = new NvsTransDesc();
}
