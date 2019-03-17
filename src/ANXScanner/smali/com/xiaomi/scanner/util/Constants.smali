.class public Lcom/xiaomi/scanner/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "route"

.field public static final ADDRESS_CHINESE:I = 0xe

.field public static final ADDRESS_ENGLISH:I = 0xf

.field public static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final ALIPAY_URL:Ljava/lang/String; = "alipays://platformapi/startApp?"

.field public static final ALPAY_HOST:Ljava/lang/String; = "qr.alipay.com"

.field public static final APPID:Ljava/lang/String; = "10000007"

.field public static final CELLPHONE_NUM:I = 0x2

.field public static final CHANNEL_DEFAULT:Ljava/lang/String; = "XiaoMi"

.field public static final COMPANY_CHINESE:I = 0xc

.field public static final COMPANY_ENGLISH:I = 0xd

.field public static final DATE:I = 0x12

.field public static final DEPARTMENT_CHINESE:I = 0x5

.field public static final DEPARTMENT_ENGLISH:I = 0x6

.field public static final EMAIL:I = 0x4

.field public static final FAX_NUM:I = 0x9

.field public static final KEY_IS_WECHAT_PAY_TYPE:Ljava/lang/String; = "isWechatPayType"

.field public static final KEY_LAST_USE_MODULE_ID:Ljava/lang/String; = "lastUseModuleId"

.field public static final KEY_LOCAL_SHOW_KOREA_PERMISSION:Ljava/lang/String; = "koreaPermissionShow"

.field public static final KEY_PREFERENCE_PAY_SELECT:Ljava/lang/String; = "preferencePaySelect"

.field public static final KEY_SAVE_DEFAULT_FUNCTION_SELECT:Ljava/lang/String; = "defaultFunctionSelect"

.field public static final NAME_CHINESE:I = 0x0

.field public static final NAME_ENGLISH:I = 0x1

.field public static final PAY_ALIPAY:I = 0x0

.field public static final PAY_CHOOSE:I = 0x2

.field public static final PAY_WECHAT:I = 0x1

.field public static final PREFERENCE_PAY_LIST:[I

.field public static final QQ_NUM:I = 0xb

.field public static SEARCH_BAIDU_URI:Ljava/lang/String; = null

.field public static SEARCH_GAODE_URI:Ljava/lang/String; = null

.field public static final SETTING_SAVE_LAST_TIME:I = -0x64

.field public static final SOURCEID:Ljava/lang/String; = "xiaomiScan"

.field public static final SRE_SECRET:Ljava/lang/String; = "1234"

.field public static final TELEPHONE_NUM:I = 0x3

.field public static final TITLE_CHINESE:I = 0x7

.field public static final TITLE_ENGLISH:I = 0x8

.field public static final URL:I = 0x11

.field public static final WEIBO:I = 0xa

.field public static final ZIP_CODE:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "baidumap://map/geocoder?src=openApiDemo&address=AAAA"

    sput-object v0, Lcom/xiaomi/scanner/util/Constants;->SEARCH_BAIDU_URI:Ljava/lang/String;

    .line 40
    const-string v0, "androidamap://keywordNavi?sourceApplication=softname&keyword=AAAA&style=2"

    sput-object v0, Lcom/xiaomi/scanner/util/Constants;->SEARCH_GAODE_URI:Ljava/lang/String;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/scanner/util/Constants;->PREFERENCE_PAY_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f07009d
        0x7f0700a3
        0x7f07009e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
