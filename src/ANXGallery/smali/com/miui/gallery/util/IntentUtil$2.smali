.class final Lcom/miui/gallery/util/IntentUtil$2;
.super Ljava/lang/Object;
.source "IntentUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/IntentUtil;->startPhotoMovie(Landroid/app/Activity;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloading()V
    .locals 2

    .prologue
    .line 903
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0392

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 904
    return-void
.end method

.method public onFinish(ZI)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "errorCode"    # I

    .prologue
    .line 909
    return-void
.end method
