.class public Lcom/xiaomi/channel/commonutils/misc/DebugSwitch;
.super Ljava/lang/Object;
.source "DebugSwitch.java"


# static fields
.field public static sDebugServerHost:Z

.field public static sOneboxServerHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/DebugSwitch;->sDebugServerHost:Z

    .line 15
    const-string v0, "10.237.14.141"

    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/DebugSwitch;->sOneboxServerHost:Ljava/lang/String;

    return-void
.end method
