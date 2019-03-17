.class public Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;
.super Ljava/lang/Object;
.source "QRCodeMatcher.java"


# static fields
.field private static final CARD:Ljava/util/regex/Pattern;

.field private static final CARDHEAD:Ljava/util/regex/Pattern;

.field public static final INTENT_CARD_KEY_BIRTH:Ljava/lang/String; = "birth"

.field private static INTENT_INSERT_WEBSITE:Ljava/lang/String; = null

.field private static final MARKET:Ljava/util/regex/Pattern;

.field private static final MECARD:Ljava/util/regex/Pattern;

.field private static final MECARDHEAD:Ljava/util/regex/Pattern;

.field private static final MECARDSPLIT:Ljava/util/regex/Pattern;

.field private static final MIRACAST_BOX:Ljava/util/regex/Pattern;

.field public static final MIRACAST_PARAM_MAC:Ljava/lang/String; = "miracast_tvmac"

.field public static final MIRACAST_PARAM_NAME:Ljava/lang/String; = "miracast_tvname"

.field private static final MIRACAST_TV:Ljava/util/regex/Pattern;

.field private static final NUMBER:Ljava/util/regex/Pattern;

.field private static final PAYTM_ALPHANUMERIC:Ljava/util/regex/Pattern;

.field private static final PAYTM_DIGIT:Ljava/util/regex/Pattern;

.field private static final PHONE:Ljava/util/regex/Pattern;

.field private static final VCARD:Ljava/util/regex/Pattern;

.field private static final VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

.field private static final WEB_URL:Ljava/util/regex/Pattern;

.field private static final WIFI:Ljava/util/regex/Pattern;

.field private static final WIFIHEAD:Ljava/util/regex/Pattern;

.field private static final WIFISPLIT:Ljava/util/regex/Pattern;


# instance fields
.field private mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "website"

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->INTENT_INSERT_WEBSITE:Ljava/lang/String;

    .line 30
    const-string v0, "(?:(?:((http|https|rtsp)):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:\\/(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WEB_URL:Ljava/util/regex/Pattern;

    .line 48
    new-instance v0, Lcom/google/zxing/client/result/VCardResultParser;

    invoke-direct {v0}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

    .line 49
    const-string v0, "(market\\s*:\\/\\/.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MARKET:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "(?:https?:\\/\\/qmirror\\.sys\\.tv\\.mi\\.com\\/\\?(?:.*&)?miracast_tvmac=.*)|(?:https?:\\/\\/weixin\\.qq\\.com\\/r\\/N3Xv96DE_-2EreSU9yAl(\\/info)?\\?miracast_tvmac.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_TV:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "(http:\\/\\/weixin.qq.com\\/r\\/P3XO1lDE8w2MrRS19yAt\\/info\\?miracast_tvmac.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_BOX:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "(card\\s*:.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARD:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "(mecard\\s*:.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARD:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "\\s*(CARD|mecard)\\s*:\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARDHEAD:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "^BEGIN:VCARD(.|\n)*END:VCARD$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARD:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "([a-zA-Z]{1,6}\\s*:[^;]+);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDSPLIT:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "\\s*(MECARD|mecard)\\s*:\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDHEAD:Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "(WIFI\\s*:.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFI:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "([a-zA-Z]{1,2}\\s*:[^;]+);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFISPLIT:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "WIFI\\s*:\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFIHEAD:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PHONE:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "^[0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->NUMBER:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, "^\\p{Alnum}{24}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_ALPHANUMERIC:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "^\\d{6}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_DIGIT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-void
.end method

.method private findVCardBykey(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    .line 311
    .local v0, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 204
    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 206
    .local v0, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    if-eqz v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-object v2
.end method

.method private getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 269
    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NAME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "name":Ljava/lang/String;
    const-string p1, "name"

    .line 272
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 273
    :cond_1
    const-string v1, "NICKNAME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0    # "name":Ljava/lang/String;
    const-string p1, "data1"

    .line 276
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 277
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->parsePhone(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_3
    const-string v1, "EMAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->parseEmail(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_5
    const-string v1, "URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "DIV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 282
    :cond_6
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "name":Ljava/lang/String;
    sget-object p1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->INTENT_INSERT_WEBSITE:Ljava/lang/String;

    .line 284
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 285
    .end local v0    # "name":Ljava/lang/String;
    :cond_7
    const-string v1, "ADR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 286
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0    # "name":Ljava/lang/String;
    const-string p1, "postal"

    .line 288
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 289
    .end local v0    # "name":Ljava/lang/String;
    :cond_8
    const-string v1, "ORG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 290
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0    # "name":Ljava/lang/String;
    const-string p1, "company"

    .line 292
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 293
    .end local v0    # "name":Ljava/lang/String;
    :cond_9
    const-string v1, "TIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "TITLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 294
    :cond_a
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    .restart local v0    # "name":Ljava/lang/String;
    const-string p1, "job_title"

    .line 296
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 297
    .end local v0    # "name":Ljava/lang/String;
    :cond_b
    const-string v1, "BDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 298
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0    # "name":Ljava/lang/String;
    const-string p1, "birth"

    .line 300
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "name":Ljava/lang/String;
    :cond_c
    const-string v1, "NOTE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 302
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0    # "name":Ljava/lang/String;
    const-string p1, "notes"

    .line 304
    new-instance v1, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    invoke-direct {v1, p1, v0, p2, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 306
    .end local v0    # "name":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 153
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 337
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 338
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 6
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "lowerCase":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 138
    :goto_0
    return-object v4

    .line 97
    :cond_0
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_BOX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MIRACAST_TV:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    :cond_1
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto :goto_0

    .line 101
    :cond_2
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto :goto_0

    .line 105
    :cond_3
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MARKET:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 106
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-nez v4, :cond_4

    .line 107
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto :goto_0

    .line 110
    :cond_4
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARD:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-nez v4, :cond_5

    .line 112
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto :goto_0

    .line 115
    :cond_5
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARD:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-nez v4, :cond_6

    .line 117
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto :goto_0

    .line 120
    :cond_6
    new-instance v3, Lcom/google/zxing/Result;

    invoke-direct {v3, p0, v5, v5, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 121
    .local v3, "result":Lcom/google/zxing/Result;
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

    invoke-virtual {v4, v3}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 122
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto :goto_0

    .line 125
    :cond_7
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFI:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-nez v4, :cond_8

    .line 127
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto/16 :goto_0

    .line 130
    :cond_8
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_ALPHANUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isPaytmAvailable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 132
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->PAYTM_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 133
    .local v2, "paytmDigit":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 134
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto/16 :goto_0

    .line 138
    .end local v2    # "paytmDigit":Ljava/util/regex/Matcher;
    :cond_9
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    goto/16 :goto_0
.end method

.method private meCardSpliter(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/scanner/module/code/codec/QRCodeType;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 219
    iget-object v8, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 220
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    .line 222
    :cond_0
    sget-object v8, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, v8, :cond_2

    sget-object v8, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDHEAD:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 224
    .local v2, "head":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 225
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "content":Ljava/lang/String;
    sget-object v8, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->MECARDSPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 227
    .local v6, "split":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 228
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "pair":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 230
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 231
    .local v3, "index":I
    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "value":Ljava/lang/String;
    invoke-direct {p0, v4, v7, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 234
    .local v0, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    iget-object v8, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 235
    iget-object v8, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "head":Ljava/util/regex/Matcher;
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "split":Ljava/util/regex/Matcher;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->CARDHEAD:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    goto :goto_0

    .line 240
    .restart local v2    # "head":Ljava/util/regex/Matcher;
    :cond_3
    iget-object v8, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-object v8
.end method

.method private parseEmail(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v3, "type":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "email"

    .line 259
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVCardBykey(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 260
    .local v0, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->addValue(Ljava/lang/String;)V

    .line 264
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :goto_0
    return-object v0

    .restart local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private parsePhone(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "name":Ljava/lang/String;
    const-string v1, "phone"

    .line 246
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVCardBykey(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 247
    .local v0, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->addValue(Ljava/lang/String;)V

    .line 251
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :goto_0
    return-object v0

    .restart local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private vCardSpliter(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 157
    new-instance v1, Lcom/google/zxing/Result;

    invoke-direct {v1, p1, v3, v3, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 158
    .local v1, "result":Lcom/google/zxing/Result;
    sget-object v3, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->VCARDPARSER:Lcom/google/zxing/client/result/VCardResultParser;

    invoke-virtual {v3, v1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v2

    .line 159
    .local v2, "vcard":Lcom/google/zxing/client/result/AddressBookParsedResult;
    if-eqz v2, :cond_9

    .line 160
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "N"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 163
    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNicknames()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 164
    const-string v3, "NICKNAME"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNicknames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 166
    :cond_1
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 167
    const-string v3, "TEL"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 169
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 170
    const-string v3, "EMAIL"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 172
    :cond_3
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 173
    const-string v3, "URL"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 175
    :cond_4
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 176
    const-string v3, "ADR"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->findVcardValue(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    .line 179
    :cond_5
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 180
    const-string v3, "ORG"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 181
    .local v0, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_6
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 185
    const-string v3, "TIL"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 186
    .restart local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_7
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 190
    const-string v3, "BDAY"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 191
    .restart local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_8
    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 195
    const-string v3, "NOTE"

    invoke-virtual {v2}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->getNameByKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaomi/scanner/module/code/zxing/VCard;

    move-result-object v0

    .line 196
    .restart local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_9
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->mCards:Ljava/util/ArrayList;

    return-object v3
.end method

.method public static wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 319
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFIHEAD:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 321
    .local v1, "head":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 322
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "content":Ljava/lang/String;
    sget-object v6, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->WIFISPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 324
    .local v5, "split":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "pair":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 327
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 328
    .local v2, "index":I
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    .line 329
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/scanner/module/code/zxing/WiFiUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 328
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v4    # "pair":Ljava/lang/String;
    .end local v5    # "split":Ljava/util/regex/Matcher;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public contactsCardSpliter(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/module/code/codec/QRCodeType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p2, v0, :cond_1

    .line 143
    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->meCardSpliter(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 144
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p2, v0, :cond_2

    .line 145
    invoke-direct {p0, p1, p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->vCardSpliter(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
