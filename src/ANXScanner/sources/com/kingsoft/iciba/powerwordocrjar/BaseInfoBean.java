package com.kingsoft.iciba.powerwordocrjar;

import java.io.Serializable;
import java.util.ArrayList;

public class BaseInfoBean implements Serializable {
    public String chSymbol = "";
    public ArrayList shiyiBeans = new ArrayList();
    public String ttsSymbol = "";
    public String ukSymbol = "";
    public String usSymbol = "";

    public String getChSymbol() {
        return this.chSymbol;
    }

    public ArrayList getShiyiBeans() {
        return this.shiyiBeans;
    }

    public String getTtsSymbol() {
        return this.ttsSymbol;
    }

    public String getUkSymbol() {
        return this.ukSymbol;
    }

    public String getUsSymbol() {
        return this.usSymbol;
    }
}
