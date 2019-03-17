.class public abstract Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;
.super Landroid/app/IntentService;
.source "SyncCommandServiceBase.java"


# static fields
.field private static mPackageNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;->mPackageNameMap:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;->mPackageNameMap:Ljava/util/Map;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "com.miui.gallery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "SyncCommandServiceBase"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static sendCommandService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    const-string v1, "SyncCommandServiceBase"

    const-string v2, "illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_1
    sget-object v1, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;->mPackageNameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 38
    const-string v1, "SyncCommandServiceBase"

    const-string v2, "authority does not have target package name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.micloud.action.SYNC_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;->mPackageNameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "key_command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public abstract handleCommand(Ljava/lang/String;)V
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, "com.xiaomi.micloud.action.SYNC_COMMAND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    const-string v0, "SyncCommandServiceBase"

    const-string v1, "illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "key_command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;->handleCommand(Ljava/lang/String;)V

    goto :goto_0
.end method
