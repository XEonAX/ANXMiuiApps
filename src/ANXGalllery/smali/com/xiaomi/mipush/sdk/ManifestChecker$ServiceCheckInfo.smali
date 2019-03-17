.class public Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;
.super Ljava/lang/Object;
.source "ManifestChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/ManifestChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCheckInfo"
.end annotation


# instance fields
.field public enabled:Z

.field public exported:Z

.field public permission:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "exported"    # Z
    .param p4, "permission"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;->serviceName:Ljava/lang/String;

    .line 335
    iput-boolean p2, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;->enabled:Z

    .line 336
    iput-boolean p3, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;->exported:Z

    .line 337
    iput-object p4, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;->permission:Ljava/lang/String;

    .line 338
    return-void
.end method
