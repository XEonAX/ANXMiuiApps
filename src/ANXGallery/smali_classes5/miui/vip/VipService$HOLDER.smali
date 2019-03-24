.class Lmiui/vip/VipService$HOLDER;
.super Ljava/lang/Object;
.source "VipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HOLDER"
.end annotation


# static fields
.field static final service:Lmiui/vip/VipService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 104
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 105
    .local v0, "app":Landroid/app/Application;
    const/4 v1, 0x0

    .line 107
    .local v1, "instance":Lmiui/vip/VipService;
    :try_start_0
    new-instance v2, Lmiui/vip/VipService;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/vip/VipService;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "HOLDER.init failed, %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    sput-object v1, Lmiui/vip/VipService$HOLDER;->service:Lmiui/vip/VipService;

    .line 112
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "instance":Lmiui/vip/VipService;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
