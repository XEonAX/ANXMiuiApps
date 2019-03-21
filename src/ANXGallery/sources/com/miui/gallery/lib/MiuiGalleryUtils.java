package com.miui.gallery.lib;

import android.text.TextUtils;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

public class MiuiGalleryUtils {
    private static final String[] ALBUM_SHARE_BARCODE_URLS = ALBUM_SHARE_INVITATION_URLS;
    private static final ArrayList<Pattern> ALBUM_SHARE_BARCODE_URL_PATTERNS = Lists.newArrayList();
    private static final ArrayList<Pattern> ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS = Lists.newArrayList();
    private static final String[] ALBUM_SHARE_INVITATION_URLS = new String[]{"http://mij.cc/[a-z]+/[a-zA-Z0-9\\-_]{16}#a", "http://mi1.cc/[a-zA-Z0-9\\-_]{16}#a", null};
    private static final ArrayList<Pattern> ALBUM_SHARE_INVITATION_URL_PATTERNS = Lists.newArrayList();
    private static final ArrayList<Pattern> ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS = Lists.newArrayList();

    static {
        initPatterns(ALBUM_SHARE_INVITATION_URLS, ALBUM_SHARE_INVITATION_URL_PATTERNS, ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS);
        initPatterns(ALBUM_SHARE_BARCODE_URLS, ALBUM_SHARE_BARCODE_URL_PATTERNS, ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS);
    }

    private static void initPatterns(String[] strs, ArrayList<Pattern> patterns, ArrayList<Pattern> strictPatterns) {
        for (String p : strs) {
            if (p != null) {
                patterns.add(Pattern.compile(p));
                strictPatterns.add(Pattern.compile(String.format("^%s$", new Object[]{p})));
            }
        }
    }

    public static boolean isAlbumShareInvitationUrl(String url) {
        return hasMatch(ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS, url);
    }

    public static boolean isAlbumShareBarcodeUrl(String url) {
        return hasMatch(ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS, url);
    }

    public static boolean isAlbumShareUrl(String url) {
        return isAlbumShareInvitationUrl(url) || isAlbumShareBarcodeUrl(url);
    }

    private static boolean hasMatch(ArrayList<Pattern> patterns, String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        Iterator it = patterns.iterator();
        while (it.hasNext()) {
            if (((Pattern) it.next()).matcher(url).matches()) {
                return true;
            }
        }
        return false;
    }
}
