.class public Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;
.super Ljava/lang/Object;
.source "RequestConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;
    }
.end annotation


# static fields
.field public static final USE_MEMBER_DAILY:Z

.field public static final USE_PREVIEW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/xiaomi_account_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;->USE_PREVIEW:Z

    .line 7
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/micloud_member_daily"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;->USE_MEMBER_DAILY:Z

    return-void
.end method
