.class Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$2;
.super Ljava/lang/Object;
.source "nexAssetPackageManager.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnFailListener;


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

.field final synthetic b:I

.field final synthetic c:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;I)V
    .locals 0

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$2;->c:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$2;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 3

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$2;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$2;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;

    const/4 v1, -0x1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$2;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;->onCompleted(II)V

    .line 1279
    :cond_0
    return-void
.end method
