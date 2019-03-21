package com.nexstreaming.kminternal.kinemaster.fonts;

import android.graphics.Typeface;
import android.os.Build.VERSION;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: BuiltInFonts */
class a {
    private static String a(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        char[] toCharArray = str.toCharArray();
        int length = toCharArray.length;
        int i = 0;
        Object obj = 1;
        while (i < length) {
            Object obj2;
            char c = toCharArray[i];
            if (obj != null) {
                if (c >= 'a' && c <= 'z') {
                    c = (char) (c - 32);
                }
                stringBuffer.append(c);
                obj2 = null;
            } else if (c == '_' || c == '-') {
                stringBuffer.append(' ');
                int obj22 = 1;
            } else {
                stringBuffer.append(c);
                obj22 = obj;
            }
            i++;
            obj = obj22;
        }
        return stringBuffer.toString();
    }

    private static String b(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (char c : str.toLowerCase().toCharArray()) {
            if (!(c == '_' || c == '-' || c == ' ')) {
                stringBuffer.append(c);
            }
        }
        return stringBuffer.toString();
    }

    static List<Font> a() {
        List<Font> arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(new Font[]{new Font("system.robotothin", "android", Typeface.create("sans-serif-thin", 0), "Roboto Thin"), new Font("system.robotolight", "android", Typeface.create("sans-serif-light", 0), "Roboto Light"), new Font("system.droidsans", "android", Typeface.create("sans-serif", 0), "Roboto Regular"), new Font("system.droidsansb", "android", Typeface.create("sans-serif", 1), "Roboto Bold"), new Font("system.robotonthini", "android", Typeface.create("sans-serif-thin", 2), "Roboto Thin Italic"), new Font("system.robotolighti", "android", Typeface.create("sans-serif-light", 2), "Roboto Light Italic"), new Font("system.robotoi", "android", Typeface.create("sans-serif", 2), "Roboto Regular Italic"), new Font("system.robotobi", "android", Typeface.create("sans-serif", 3), "Roboto Bold Italic"), new Font("system.robotocond", "android", Typeface.create("sans-serif-condensed", 0), "Roboto Condensed Regular"), new Font("system.robotocondi", "android", Typeface.create("sans-serif-condensed", 2), "Roboto Condensed Italic"), new Font("system.robotocondb", "android", Typeface.create("sans-serif-condensed", 1), "Roboto Condensed Bold"), new Font("system.robotocondbi", "android", Typeface.create("sans-serif-condensed", 3), "Roboto Condensed Bold Italic"), new Font("system.droidserif", "android", Typeface.create(Typeface.SERIF, 0), "Noto Serif Regular"), new Font("system.droidserifb", "android", Typeface.create(Typeface.SERIF, 1), "Noto Serif Bold"), new Font("system.droidserifi", "android", Typeface.create(Typeface.SERIF, 2), "Noto Serif Italic"), new Font("system.droidserifbi", "android", Typeface.create(Typeface.SERIF, 3), "Noto Serif Bold Italic")}));
        try {
            for (String str : com.nexstreaming.kminternal.kinemaster.config.a.a().b().getAssets().list("")) {
                if (str.endsWith(".ttf")) {
                    if (str.compareTo("bevan.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.bevan", "latin", "bevan.ttf", "Bevan"));
                    } else if (str.compareTo("creepster-regular.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.creepster", "latin", "creepster-regular.ttf", "Creepster"));
                    } else if (str.compareTo("goudy_stm_italic.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.sortsmillgoudyital", "latin", "goudy_stm_italic.ttf", "Sorts Mill Goudy Italic"));
                    } else if (str.compareTo("greatvibes-regular.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.greatvibes", "latin", "greatvibes-regular.ttf", "Great Vibes"));
                    } else if (str.compareTo("junction.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.junction", "latin", "junction.ttf", "Junction"));
                    } else if (str.compareTo("knewave.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.knewave", "latin", "knewave.ttf", "Knewave"));
                    } else if (str.compareTo("lato-bold.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.latobold", "latin", "lato-bold.ttf", "Lato Bold"));
                    } else if (str.compareTo("leaguegothic.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.leaguegothic", "latin", "leaguegothic.ttf", "League Gothic"));
                    } else if (str.compareTo("leaguescript.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.leaguescriptthin", "latin", "leaguescript.ttf", "League Script"));
                    } else if (str.compareTo("lindenhill.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.lindenhillregular", "latin", "lindenhill.ttf", "Linden Hill"));
                    } else if (str.compareTo("orbitron-bold.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.orbitronbold", "latin", "orbitron-bold.ttf", "Orbitron Bold"));
                    } else if (str.compareTo("orbitron-medium.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.orbitronmedium", "latin", "orbitron-medium.ttf", "Orbitron Medium"));
                    } else if (str.compareTo("raleway_thin.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.ralewaythin", "latin", "raleway_thin.ttf", "Raleway Thin"));
                    } else if (str.compareTo("redressed.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.redressedregular", "latin", "redressed.ttf", "Redressed"));
                    } else if (str.compareTo("sniglet.ttf") == 0) {
                        arrayList.add(new Font("builtin.font.sniglet", "latin", "sniglet.ttf", "Sniglet"));
                    } else if (!str.startsWith("_H_")) {
                        String substring = str.substring(0, str.length() - 4);
                        arrayList.add(new Font("builtin.font." + b(substring), "latin", str, a(substring)));
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (VERSION.SDK_INT >= 21) {
            arrayList.addAll(Arrays.asList(new Font[]{new Font("system.robotomed", "android", Typeface.create("sans-serif-medium", 0), "Roboto Medium"), new Font("system.robotomedi", "android", Typeface.create("sans-serif-medium", 2), "Roboto Medium Italic"), new Font("system.robotoblk", "android", Typeface.create("sans-serif-black", 0), "Roboto Black"), new Font("system.robotoblki", "android", Typeface.create("sans-serif-black", 2), "Roboto Black Italic")}));
            arrayList.addAll(Arrays.asList(new Font[]{new Font("system.cursive", "android", Typeface.create("cursive", 0), "Dancing Script Regular"), new Font("system.cursiveb", "android", Typeface.create("cursive", 1), "Dancing Script Bold"), new Font("system.mono", "android", Typeface.create("monospace", 0), "Droid Sans Mono")}));
        }
        return arrayList;
    }
}
