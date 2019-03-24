package com.miui.internal.analytics;

import java.util.Random;
import java.util.regex.Pattern;

public class Item {
    private Pattern V;
    private Pattern W;
    private long X;
    private Random Y = new Random();
    private String mPolicy;

    public Item(String str, String str2, String str3, long j) {
        this.V = Pattern.compile(str);
        this.mPolicy = str2;
        this.W = Pattern.compile(str3);
        this.X = j;
    }

    public String getPolicy() {
        return this.mPolicy;
    }

    public boolean idMatches(String str) {
        return this.V.matcher(str).matches();
    }

    public boolean isDispatch(String str) {
        if (this.X < ((long) (this.Y.nextInt(100) + 1)) || !this.W.matcher(str).matches()) {
            return false;
        }
        return true;
    }
}
