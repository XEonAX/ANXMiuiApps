.class final Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$2;
.super Ljava/lang/Object;
.source "SyncContentUtils.java"

# interfaces
.implements Lcom/miui/utils/SafeContentResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->isPauseExceptAuthority(Landroid/content/Context;Ljava/lang/String;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 101
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "SyncContentUtils"

    const-string v2, "loadResumeTime: error cursor is null or query fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic call(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$2;->call(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
