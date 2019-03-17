.class Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;
.super Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionPhotoManager"
.end annotation


# instance fields
.field private mOperationView:Landroid/view/View;

.field private mSupported:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;Lcom/miui/gallery/ui/PhotoPageTopBar;)V
    .locals 2
    .param p2, "specialTypeManager"    # Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;
    .param p3, "topBar"    # Lcom/miui/gallery/ui/PhotoPageTopBar;

    .prologue
    .line 2968
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    .line 2969
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->isDeviceSupportMotionPhoto(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mSupported:Z

    .line 2970
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mSupported:Z

    if-eqz v0, :cond_0

    .line 2971
    const-wide/16 v0, 0x20

    invoke-virtual {p2, v0, v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->addTypeCallback(JLcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;)V

    .line 2972
    invoke-virtual {p3}, Lcom/miui/gallery/ui/PhotoPageTopBar;->getOperationView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mOperationView:Landroid/view/View;

    .line 2973
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mOperationView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2975
    :cond_0
    return-void
.end method


# virtual methods
.method public getEnterDrawableId()I
    .locals 1

    .prologue
    .line 3032
    const v0, 0x7f0201c2

    return v0
.end method

.method protected handleEditorResult(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2990
    if-nez p1, :cond_1

    .line 3008
    :cond_0
    :goto_0
    return v2

    .line 2994
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2995
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2999
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3000
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3004
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->setTargetPath(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->insertAndNotifyDataSet(Ljava/lang/String;)V

    .line 3006
    const-string v2, "motion_photo"

    const-string v3, "motion_photo_save"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onCanceled()V
    .locals 2

    .prologue
    .line 3037
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->onCanceled()V

    .line 3038
    const-string v0, "motion_photo"

    const-string v1, "motion_photo_cancel"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2979
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mSupported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    if-nez v1, :cond_1

    .line 2986
    :cond_0
    :goto_0
    return-void

    .line 2982
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 2983
    .local v0, "photoPageItem":Lcom/miui/gallery/ui/PhotoPageItem;
    instance-of v1, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;

    if-eqz v1, :cond_0

    .line 2984
    check-cast v0, Lcom/miui/gallery/ui/PhotoPageImageItem;

    .end local v0    # "photoPageItem":Lcom/miui/gallery/ui/PhotoPageItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->onActionBarOperationClick()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 3043
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->release()V

    .line 3044
    return-void
.end method

.method public onEnterClick(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3021
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mSupported:Z

    if-nez v0, :cond_0

    .line 3028
    :goto_0
    return-void

    .line 3024
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/IntentUtil;->startMotionPhotoAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Activity;Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3025
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->onStartEditor()V

    .line 3026
    const-string v0, "motion_photo"

    const-string v1, "motion_photo_enter"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRecognized(Lcom/miui/gallery/model/BaseDataItem;Z)V
    .locals 2
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "result"    # Z

    .prologue
    .line 3013
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mSupported:Z

    if-nez v0, :cond_0

    .line 3017
    :goto_0
    return-void

    .line 3016
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->mOperationView:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
