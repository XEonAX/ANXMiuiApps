.class public final enum Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/applink/TBAppLinkSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JumpFailedMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

.field public static final enum DOWNLOAD_TAOBAO:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

.field public static final enum NONE:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

.field public static final enum OPEN_H5:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    const-string v1, "DOWNLOAD_TAOBAO"

    invoke-direct {v0, v1, v2}, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->DOWNLOAD_TAOBAO:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    new-instance v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    const-string v1, "OPEN_H5"

    invoke-direct {v0, v1, v3}, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->OPEN_H5:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    new-instance v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->NONE:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    sget-object v1, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->DOWNLOAD_TAOBAO:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->OPEN_H5:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->NONE:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->$VALUES:[Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;
    .locals 1

    const-class v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;
    .locals 1

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->$VALUES:[Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    invoke-virtual {v0}, [Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    return-object v0
.end method
