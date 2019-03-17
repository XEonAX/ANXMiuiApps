.class public final enum Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;
.super Ljava/lang/Enum;
.source "CloudConfigNetworkError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

.field public static final enum ENCODING_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

.field public static final enum OTHER_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

.field public static final enum PROTOCOL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

.field public static final enum REDIRECT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

.field public static final enum RESPONSE_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

.field public static final enum TIMEOUT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

.field public static final enum URL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    const-string v1, "ENCODING_ERROR"

    const/16 v2, 0xc9

    const-string v3, "network encoding error"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->ENCODING_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .line 12
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    const-string v1, "PROTOCOL_ERROR"

    const/16 v2, 0xca

    const-string v3, "network protocol error"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->PROTOCOL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .line 13
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    const-string v1, "REDIRECT_ERROR"

    const/16 v2, 0xcb

    const-string v3, "network redirect error"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->REDIRECT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .line 14
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    const-string v1, "RESPONSE_ERROR"

    const/16 v2, 0xcc

    const-string v3, "network response error"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->RESPONSE_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .line 15
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    const-string v1, "TIMEOUT_ERROR"

    const/16 v2, 0xcd

    const-string v3, "network timeout error"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->TIMEOUT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .line 16
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    const-string v1, "URL_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0xcf

    const-string v4, "network_url_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->URL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .line 17
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    const-string v1, "OTHER_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0xd0

    const-string v4, "network other error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->OTHER_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    sget-object v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->ENCODING_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->PROTOCOL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->REDIRECT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->RESPONSE_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->TIMEOUT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->URL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->OTHER_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->$VALUES:[Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->errorCode:I

    .line 24
    iput-object p4, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->errorMessage:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->$VALUES:[Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    return-object v0
.end method


# virtual methods
.method public withMessage(Ljava/lang/String;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->errorMessage:Ljava/lang/String;

    .line 29
    return-object p0
.end method
