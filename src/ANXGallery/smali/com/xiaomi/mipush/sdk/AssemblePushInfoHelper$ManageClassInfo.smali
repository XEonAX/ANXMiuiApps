.class Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;
.super Ljava/lang/Object;
.source "AssemblePushInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManageClassInfo"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;->className:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;->methodName:Ljava/lang/String;

    .line 83
    return-void
.end method
