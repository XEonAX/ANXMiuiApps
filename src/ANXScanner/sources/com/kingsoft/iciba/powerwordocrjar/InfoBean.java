package com.kingsoft.iciba.powerwordocrjar;

import java.io.Serializable;
import java.util.ArrayList;

public class InfoBean implements Serializable {
    public ArrayList baseInfoBeans;
    public int status;
    public String word;

    public ArrayList getBaseInfoBeans() {
        return this.baseInfoBeans;
    }

    public int getStatus() {
        return this.status;
    }

    public String getWord() {
        return this.word;
    }
}
