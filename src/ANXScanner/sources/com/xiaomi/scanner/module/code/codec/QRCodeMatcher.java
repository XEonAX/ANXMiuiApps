package com.xiaomi.scanner.module.code.codec;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.zxing.Result;
import com.google.zxing.client.result.AddressBookParsedResult;
import com.google.zxing.client.result.VCardResultParser;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.module.code.zxing.VCard;
import com.xiaomi.scanner.module.code.zxing.WiFiUtil;
import com.xiaomi.scanner.settings.FeatureManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class QRCodeMatcher {
    private static final Pattern CARD = Pattern.compile("(card\\s*:.*)");
    private static final Pattern CARDHEAD = Pattern.compile("\\s*(CARD|mecard)\\s*:\\s*");
    public static final String INTENT_CARD_KEY_BIRTH = "birth";
    private static String INTENT_INSERT_WEBSITE = "website";
    private static final Pattern MARKET = Pattern.compile("(market\\s*:\\/\\/.*)");
    private static final Pattern MECARD = Pattern.compile("(mecard\\s*:.*)");
    private static final Pattern MECARDHEAD = Pattern.compile("\\s*(MECARD|mecard)\\s*:\\s*");
    private static final Pattern MECARDSPLIT = Pattern.compile("([a-zA-Z]{1,6}\\s*:[^;]+);");
    private static final Pattern MIRACAST_BOX = Pattern.compile("(http:\\/\\/weixin.qq.com\\/r\\/P3XO1lDE8w2MrRS19yAt\\/info\\?miracast_tvmac.*)");
    public static final String MIRACAST_PARAM_MAC = "miracast_tvmac";
    public static final String MIRACAST_PARAM_NAME = "miracast_tvname";
    private static final Pattern MIRACAST_TV = Pattern.compile("(?:https?:\\/\\/qmirror\\.sys\\.tv\\.mi\\.com\\/\\?(?:.*&)?miracast_tvmac=.*)|(?:https?:\\/\\/weixin\\.qq\\.com\\/r\\/N3Xv96DE_-2EreSU9yAl(\\/info)?\\?miracast_tvmac.*)");
    private static final Pattern NUMBER = Pattern.compile("^[0-9]*$");
    private static final Pattern PAYTM_ALPHANUMERIC = Pattern.compile("^\\p{Alnum}{24}$");
    private static final Pattern PAYTM_DIGIT = Pattern.compile("^\\d{6}");
    private static final Pattern PHONE = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
    private static final Pattern VCARD = Pattern.compile("^BEGIN:VCARD(.|\n)*END:VCARD$");
    private static final VCardResultParser VCARDPARSER = new VCardResultParser();
    private static final Pattern WEB_URL = Pattern.compile("(?:(?:((http|https|rtsp)):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:(?:(?:[a-zA-Z0-9 -퟿豈-﷏ﷰ-￯][a-zA-Z0-9 -퟿豈-﷏ﷰ-￯\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:δοκιμή|испытание|рф|срб|טעסט|آزمایشی|إختبار|الاردن|الجزائر|السعودية|المغرب|امارات|بھارت|تونس|سورية|فلسطين|قطر|مصر|परीक्षा|भारत|ভারত|ਭਾਰਤ|ભારત|இந்தியா|இலங்கை|சிங்கப்பூர்|பரிட்சை|భారత్|ලංකා|ไทย|テスト|中国|中國|台湾|台灣|新加坡|测试|測試|香港|테스트|한국|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:\\/(?:(?:[a-zA-Z0-9 -퟿豈-﷏ﷰ-￯\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)");
    private static final Pattern WIFI = Pattern.compile("(WIFI\\s*:.*)");
    private static final Pattern WIFIHEAD = Pattern.compile("WIFI\\s*:\\s*");
    private static final Pattern WIFISPLIT = Pattern.compile("([a-zA-Z]{1,2}\\s*:[^;]+);");
    private ArrayList<VCard> mCards = new ArrayList();

    public static QRCodeType match(String original) {
        original = original.trim();
        String lowerCase = original.toLowerCase();
        if (VCARD.matcher(original).matches()) {
            return QRCodeType.VCARD;
        }
        if (MIRACAST_BOX.matcher(original).matches() || MIRACAST_TV.matcher(original).matches()) {
            return QRCodeType.MIRACAST;
        }
        if (WEB_URL.matcher(lowerCase).matches()) {
            return QRCodeType.WEB_URL;
        }
        Matcher match = MARKET.matcher(lowerCase);
        if (match.find() && match.start() == 0) {
            return QRCodeType.MARKET;
        }
        match = MECARD.matcher(lowerCase);
        if (match.find() && match.start() == 0) {
            return QRCodeType.MECARD;
        }
        match = CARD.matcher(lowerCase);
        if (match.find() && match.start() == 0) {
            return QRCodeType.CARD;
        }
        if (VCARDPARSER.parse(new Result(original, null, null, null)) != null) {
            return QRCodeType.VCARD;
        }
        match = WIFI.matcher(original);
        if (match.find() && match.start() == 0) {
            return QRCodeType.WIFI;
        }
        if (PAYTM_ALPHANUMERIC.matcher(original).matches() && FeatureManager.isPaytmAvailable() && PAYTM_DIGIT.matcher(original).find()) {
            return QRCodeType.PAYTM;
        }
        return QRCodeType.TEXT;
    }

    public ArrayList<VCard> contactsCardSpliter(String s, QRCodeType type, Context context) {
        if (type == QRCodeType.MECARD || type == QRCodeType.CARD) {
            return meCardSpliter(type, s, context);
        }
        if (type == QRCodeType.VCARD) {
            return vCardSpliter(s, context);
        }
        return null;
    }

    public static boolean isNumber(String number) {
        return NUMBER.matcher(number).matches();
    }

    private ArrayList<VCard> vCardSpliter(String s, Context context) {
        AddressBookParsedResult vcard = VCARDPARSER.parse(new Result(s, null, null, null));
        if (vcard != null) {
            if (vcard.getNames() != null) {
                findVcardValue("N", vcard.getNames(), context);
            }
            if (vcard.getNicknames() != null) {
                findVcardValue("NICKNAME", vcard.getNicknames(), context);
            }
            if (vcard.getPhoneNumbers() != null) {
                findVcardValue("TEL", vcard.getPhoneNumbers(), context);
            }
            if (vcard.getEmails() != null) {
                findVcardValue("EMAIL", vcard.getEmails(), context);
            }
            if (vcard.getURLs() != null) {
                findVcardValue("URL", vcard.getURLs(), context);
            }
            if (vcard.getAddresses() != null) {
                findVcardValue("ADR", vcard.getAddresses(), context);
            }
            if (!TextUtils.isEmpty(vcard.getOrg())) {
                this.mCards.add(getNameByKey("ORG", vcard.getOrg(), context));
            }
            if (!TextUtils.isEmpty(vcard.getTitle())) {
                this.mCards.add(getNameByKey("TIL", vcard.getTitle(), context));
            }
            if (!TextUtils.isEmpty(vcard.getBirthday())) {
                this.mCards.add(getNameByKey("BDAY", vcard.getBirthday(), context));
            }
            if (!TextUtils.isEmpty(vcard.getNote())) {
                this.mCards.add(getNameByKey("NOTE", vcard.getNote(), context));
            }
        }
        return this.mCards;
    }

    private ArrayList<VCard> findVcardValue(String key, String[] values, Context context) {
        for (int i = 0; i < values.length; i++) {
            if (!TextUtils.isEmpty(values[i])) {
                VCard card = getNameByKey(key, values[i], context);
                if (!(card == null || this.mCards.contains(card))) {
                    this.mCards.add(card);
                }
            }
        }
        return this.mCards;
    }

    private ArrayList<VCard> meCardSpliter(QRCodeType type, String s, Context context) {
        Matcher head;
        if (this.mCards == null) {
            this.mCards = new ArrayList();
        }
        if (type == QRCodeType.MECARD) {
            head = MECARDHEAD.matcher(s);
        } else {
            head = CARDHEAD.matcher(s);
        }
        if (head.find()) {
            Matcher split = MECARDSPLIT.matcher(s.substring(head.end()));
            while (split.find()) {
                String pair = split.group(0);
                if (pair != null) {
                    int index = pair.indexOf(58);
                    VCard card = getNameByKey(pair.substring(0, index).toUpperCase().trim(), pair.substring(index + 1, pair.length() - 1), context);
                    if (!this.mCards.contains(card)) {
                        this.mCards.add(card);
                    }
                }
            }
        }
        return this.mCards;
    }

    private VCard parsePhone(String value, Context context) {
        String name = context.getResources().getString(R.string.phone);
        String key = "phone";
        VCard card = findVCardBykey(key);
        if (card == null) {
            return new VCard(key, name, value, isPhoneNumber(value));
        }
        card.addValue(value);
        return card;
    }

    private VCard parseEmail(String value, Context context) {
        String name = context.getResources().getString(R.string.email);
        Map<String, String> type = new HashMap();
        String key = NotificationCompat.CATEGORY_EMAIL;
        VCard card = findVCardBykey(key);
        if (card == null) {
            return new VCard(key, name, value, false);
        }
        card.addValue(value);
        return card;
    }

    private VCard getNameByKey(String key, String value, Context context) {
        if (key.equalsIgnoreCase("N") || key.equalsIgnoreCase("NAME")) {
            return new VCard("name", context.getResources().getString(R.string.name), value, false);
        } else if (key.equalsIgnoreCase("NICKNAME")) {
            return new VCard("data1", context.getResources().getString(R.string.nickname), value, false);
        } else if (key.equalsIgnoreCase("TEL")) {
            return parsePhone(value, context);
        } else {
            if (key.equalsIgnoreCase("EMAIL") || key.equalsIgnoreCase("EM")) {
                return parseEmail(value, context);
            }
            if (key.equalsIgnoreCase("URL") || key.equalsIgnoreCase("DIV")) {
                return new VCard(INTENT_INSERT_WEBSITE, context.getResources().getString(R.string.web), value, false);
            } else if (key.equalsIgnoreCase("ADR")) {
                return new VCard("postal", context.getResources().getString(R.string.address), value, false);
            } else if (key.equalsIgnoreCase("ORG")) {
                return new VCard("company", context.getResources().getString(R.string.company), value, false);
            } else if (key.equalsIgnoreCase("TIL") || key.equalsIgnoreCase("TITLE")) {
                return new VCard("job_title", context.getResources().getString(R.string.title), value, false);
            } else if (key.equalsIgnoreCase("BDAY")) {
                return new VCard(INTENT_CARD_KEY_BIRTH, context.getResources().getString(R.string.birthday), value, false);
            } else if (!key.equalsIgnoreCase("NOTE")) {
                return null;
            } else {
                return new VCard("notes", context.getResources().getString(R.string.note), value, false);
            }
        }
    }

    private VCard findVCardBykey(String key) {
        Iterator it = this.mCards.iterator();
        while (it.hasNext()) {
            VCard card = (VCard) it.next();
            if (card != null && card.getKey() != null && card.getKey().equalsIgnoreCase(key)) {
                return card;
            }
        }
        return null;
    }

    public static HashMap<String, String> wifiSpliter(String s) {
        HashMap<String, String> map = new HashMap();
        Matcher head = WIFIHEAD.matcher(s);
        if (head.find()) {
            Matcher split = WIFISPLIT.matcher(s.substring(head.end()));
            while (split.find()) {
                String pair = split.group(0);
                if (pair != null) {
                    int index = pair.indexOf(58);
                    map.put(pair.substring(0, index).toUpperCase().trim(), WiFiUtil.removeDoubleQuotes(pair.substring(index + 1, pair.length() - 1)));
                }
            }
        }
        return map;
    }

    private static boolean isPhoneNumber(String phone) {
        return PHONE.matcher(phone).matches();
    }
}
