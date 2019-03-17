package com.alibaba.imagesearch.utils;

public class a {
    public static String a(int i, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("https://huodong.m.taobao.com/act/barcodebuy.html");
        stringBuilder.append("?");
        stringBuilder.append("type=");
        stringBuilder.append(i);
        stringBuilder.append("&");
        stringBuilder.append("barcode=");
        stringBuilder.append(str);
        stringBuilder.append("&");
        stringBuilder.append("spm=w-a2141.7934109");
        return stringBuilder.toString();
    }
}
