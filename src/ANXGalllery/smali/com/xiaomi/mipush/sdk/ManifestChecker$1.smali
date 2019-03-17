.class final Lcom/xiaomi/mipush/sdk/ManifestChecker$1;
.super Ljava/lang/Object;
.source "ManifestChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/ManifestChecker;->asynCheckManifest(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1204

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 39
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->access$000(Landroid/content/Context;)V

    .line 41
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->access$100(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 43
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->access$200(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "ManifestChecker"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
