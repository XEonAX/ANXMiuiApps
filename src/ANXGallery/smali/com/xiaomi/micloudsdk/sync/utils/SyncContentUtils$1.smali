.class final Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$1;
.super Ljava/lang/Object;
.source "SyncContentUtils.java"

# interfaces
.implements Lcom/miui/utils/SafeContentResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/utils/SafeContentResolver$Callback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string v0, "SyncContentUtils"

    const-string v1, "loadResumeTime: error cursor is null or query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$1;->call(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
