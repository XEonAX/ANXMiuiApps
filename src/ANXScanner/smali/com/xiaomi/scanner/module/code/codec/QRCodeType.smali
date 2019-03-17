.class public final enum Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
.super Ljava/lang/Enum;
.source "QRCodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/scanner/module/code/codec/QRCodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "WEB_URL"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 6
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "WECHAT"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 7
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 8
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "MARKET"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 9
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "MECARD"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 10
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "VCARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 11
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "CARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 12
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "TEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 13
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "PAYTM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 14
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "MIRACAST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 4
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->$VALUES:[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->$VALUES:[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object v0
.end method
