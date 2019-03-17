.class Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;
.super Ljava/lang/Object;
.source "TUnionPhoneInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemField"
.end annotation


# static fields
.field public static MOBILE_NETWORK:Ljava/lang/String;

.field public static SEPARATOR:Ljava/lang/String;

.field public static UNKNOWN:Ljava/lang/String;

.field public static WIFI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    const-string v0, "x"

    sput-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;->SEPARATOR:Ljava/lang/String;

    .line 241
    const-string v0, "unknown"

    sput-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;->UNKNOWN:Ljava/lang/String;

    .line 242
    const-string v0, "cell"

    sput-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;->MOBILE_NETWORK:Ljava/lang/String;

    .line 243
    const-string v0, "wifi"

    sput-object v0, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils$SystemField;->WIFI:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
