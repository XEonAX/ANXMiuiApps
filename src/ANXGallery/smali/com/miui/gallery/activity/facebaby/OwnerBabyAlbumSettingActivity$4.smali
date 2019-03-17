.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->loadAndSetBabyFace(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

.field final synthetic val$facePath:Ljava/lang/String;

.field final synthetic val$faceRegion:[Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Ljava/lang/String;[Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iput-object p2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;->val$facePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;->val$faceRegion:[Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 169
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;->val$facePath:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v2, v2, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFace:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;->val$faceRegion:[Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    .line 173
    return-void
.end method
