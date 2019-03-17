.class public Lcom/alimama/tunion/trade/convert/TUnionConvertService;
.super Ljava/lang/Object;
.source "TUnionConvertService.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "taobao.com"

    aput-object v1, v0, v3

    const-string v1, "tmall.com"

    aput-object v1, v0, v4

    const-string v1, "alitrip.com"

    aput-object v1, v0, v5

    const-string v1, "tmall.hk"

    aput-object v1, v0, v6

    const-string v1, "tmall.tw"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "aliexpress.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1688.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alibaba.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a:[Ljava/lang/String;

    .line 44
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^http[s]{0,1}:\\/\\/detail\\.tmall\\.com\\/item\\.htm"

    aput-object v1, v0, v3

    const-string v1, "^http[s]{0,1}:\\/\\/s\\.click\\.taobao\\.com\\/"

    aput-object v1, v0, v4

    const-string v1, "^http[s]{0,1}:\\/\\/global\\.click\\.taobao\\.com\\/"

    aput-object v1, v0, v5

    const-string v1, "^http[s]{0,1}:\\/\\/uland\\.taobao\\.com\\/"

    aput-object v1, v0, v6

    const-string v1, "^http[s]{0,1}:\\/\\/item\\.tmall\\.com\\/item\\.htm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "^http[s]{0,1}:\\/\\/item\\.taobao\\.com\\/item\\.htm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^http[s]{0,1}:\\/\\/detail\\.taobao\\.com\\/item\\.htm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^http[s]{0,1}:\\/\\/chaoshi\\.detail\\.tmall\\.com\\/item\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "^http[s]{0,1}:\\/\\/detail\\.tmall\\.hk\\/hk\\/item\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "^http[s]{0,1}:\\/\\/a\\.m\\.tmall\\.com\\/i\\d+\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "^http[s]{0,1}:\\/\\/detail\\.m\\.tmall\\.com\\/item\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "^http[s]{0,1}:\\/\\/a\\.m\\.taobao\\.com\\/i\\d+\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "^http[s]{0,1}:\\/\\/h5\\.(m|wapa)\\.taobao\\.com\\/awp\\/core\\/detail\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "^http[s]{0,1}:\\/\\/detail\\.m\\.tmall\\.hk\\/item\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "^http[s]{0,1}:\\/\\/store\\.tmall\\.com\\/shop\\/view_shop\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "^http[s]{0,1}:\\/\\/store\\.taobao\\.com\\/shop\\/view_shop\\.htm"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "^http[s]{0,1}:\\/\\/shop\\.(m|wapa)\\.taobao\\.com\\/shop\\/shop_index"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "^http[s]{0,1}:\\/\\/shop\\.(m|wapa)\\.tmall\\.com\\/shop\\/shop_index"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "^http[s]{0,1}:\\/\\/miao\\.item\\.taobao\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "^http[s]{0,1}:\\/\\/kezhan\\.taobao\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "^http[s]{0,1}:\\/\\/trip\\.taobao\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "^http[s]{0,1}:\\/\\/alitrip\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^http[s]{0,1}:\\/\\/ju\\.taobao\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "^http[s]{0,1}:\\/\\/juhuasuan\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "^http[s]{0,1}:\\/\\/aliyun\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "^http[s]{0,1}:\\/\\/triph5\\.m\\.taobao\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "^http[s]{0,1}:\\/\\/jp\\.m\\.taobao\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "^http[s]{0,1}:\\/\\/jipiao\\.m\\.taobao\\.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "^http[s]{0,1}:\\/\\/h5\\.m\\.taobao\\.com\\/trip"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "^http[s]{0,1}:\\/\\/jhs\\.m\\.taobao\\.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 271
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v3

    .line 272
    if-eqz v3, :cond_1

    .line 274
    const-string v1, "abtest"

    invoke-virtual {v3, v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->getABTestValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abtest str(append abtest params) is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/alimama/tunion/utils/TULog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :try_start_1
    const-string v2, ",%s:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "cid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getCid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 285
    :goto_0
    invoke-virtual {v3, v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->getABTestCookies(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    :try_start_2
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 293
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    const-string v2, "%s%s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_1
    :goto_2
    return-object v0

    .line 281
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 282
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 289
    :catch_1
    move-exception v2

    .line 290
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 296
    goto :goto_2

    .line 281
    :catch_2
    move-exception v2

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alimama/tunion/trade/convert/TUnionConvertService;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    const-string v0, ""

    .line 309
    sget-object v1, Lcom/alimama/tunion/trade/convert/TUnionConvertService$2;->a:[I

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_0
    return-object v0

    .line 311
    :pswitch_0
    const-string v0, "tb"

    goto :goto_0

    .line 314
    :pswitch_1
    const-string v0, "h5"

    goto :goto_0

    .line 317
    :pswitch_2
    const-string v0, "br"

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object p1

    .line 194
    :cond_1
    const-string v0, "^http[s]{0,1}:\\/\\/s\\.click\\.taobao\\.com\\/.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "^http[s]{0,1}:\\/\\/uland\\.taobao\\.com\\/.*"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    const-string v2, "sdk_param="

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 201
    const-string v1, "%s&%s=%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "clk1"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_3
    const-string v1, "%s?%s=%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "clk1"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/alimama/tunion/trade/base/ITUnionWebView;)Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    if-eqz p2, :cond_0

    .line 220
    invoke-interface {p2}, Lcom/alimama/tunion/trade/base/ITUnionWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 252
    :try_start_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 253
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 255
    if-eqz v1, :cond_2

    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->b:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Lcom/alimama/tunion/trade/base/ITUnionWebView;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;)V
    .locals 5

    .prologue
    .line 87
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->initCid()V

    .line 89
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils$Convert;->convert()V

    .line 91
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionCookie()Lcom/alimama/tunion/trade/base/ITUnionCookie;

    move-result-object v0

    .line 92
    invoke-direct {p0}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a()Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    const-string v2, ".taobao.com"

    invoke-interface {v0, v2, v1}, Lcom/alimama/tunion/trade/base/ITUnionCookie;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string v0, "URL Empty"

    invoke-static {v0}, Lcom/alimama/tunion/utils/TUnionUTUtils$Convert;->failed(Ljava/lang/String;)V

    .line 100
    if-eqz p5, :cond_1

    .line 101
    new-instance v0, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;

    invoke-direct {v0, p1, p3}, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;-><init>(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Ljava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;->onResult(Lcom/alimama/tunion/trade/convert/TUnionConvertResult;)V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    if-nez p4, :cond_3

    .line 107
    new-instance p4, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;

    invoke-direct {p4}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;-><init>()V

    .line 110
    :cond_3
    invoke-virtual {p4}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getAdzoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getAdzoneId()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p4, v0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->setAdzoneId(Ljava/lang/String;)V

    .line 116
    :cond_4
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    invoke-virtual {v0, p1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->getJumpType(Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    move-result-object v0

    .line 122
    :goto_1
    invoke-direct {p0, p3, p2}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Ljava/lang/String;Lcom/alimama/tunion/trade/base/ITUnionWebView;)Z

    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 125
    invoke-virtual {p4}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 126
    invoke-virtual {p4}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "url"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p4}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "jtype"

    invoke-direct {p0, p1}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_2
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionNetwork()Lcom/alimama/tunion/trade/base/ITUnionNetwork;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_6

    .line 137
    instance-of v2, v1, Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;

    invoke-static {p4, v2}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->createConvertRequest(Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Z)Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;

    move-result-object v2

    .line 138
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils$Convert;->request()V

    .line 139
    const-string v3, "convert is calling..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alimama/tunion/utils/TULog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v3, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;

    invoke-direct {v3, p0, p3, v0, p5}, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;-><init>(Lcom/alimama/tunion/trade/convert/TUnionConvertService;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionJumpType;Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;)V

    invoke-interface {v1, v2, v3}, Lcom/alimama/tunion/trade/base/ITUnionNetwork;->sendRequest(Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;)V

    goto :goto_0

    .line 129
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v2, "url"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "jtype"

    invoke-direct {p0, p1}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p4, v1}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->setExtra(Ljava/util/Map;)V

    goto :goto_2

    .line 178
    :cond_6
    if-eqz p5, :cond_1

    .line 179
    new-instance v1, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;

    invoke-direct {v1, v0, p3}, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;-><init>(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Ljava/lang/String;)V

    invoke-interface {p5, v1}, Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;->onResult(Lcom/alimama/tunion/trade/convert/TUnionConvertResult;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, p1

    goto :goto_1
.end method
