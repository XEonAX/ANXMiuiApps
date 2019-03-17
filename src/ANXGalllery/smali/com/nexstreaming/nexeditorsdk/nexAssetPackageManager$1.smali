.class Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;
.super Ljava/lang/Object;
.source "nexAssetPackageManager.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->installPackagesAsync(ILcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->b:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;II)V
    .locals 3

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

    if-eqz v0, :cond_0

    .line 1284
    const/16 v0, 0x64

    if-ne p4, v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->b:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->access$000(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;)I

    move-result v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->b:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->access$100(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;->onProgress(III)V

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->b:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-static {v0, p3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->access$002(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;I)I

    .line 1288
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->b:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-static {v0, p4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->access$102(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;I)I

    .line 1289
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;->onProgress(III)V

    goto :goto_0
.end method
