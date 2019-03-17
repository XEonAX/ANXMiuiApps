.class public Lcom/taobao/ma/common/config/MaConfig;
.super Ljava/lang/Object;
.source "MaConfig.java"


# static fields
.field public static hasSoLoaded:Z


# instance fields
.field public final EMPTY_STRING:Ljava/lang/String;

.field public appkey:Ljava/lang/String;

.field public isDebug:Z

.field public onesdkversion:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/ma/common/config/MaConfig;->hasSoLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/ma/common/config/MaConfig;->EMPTY_STRING:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/ma/common/config/MaConfig;->isDebug:Z

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/ma/common/config/MaConfig;->appkey:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/ma/common/config/MaConfig;->utdid:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/ma/common/config/MaConfig;->onesdkversion:Ljava/lang/String;

    return-void
.end method
