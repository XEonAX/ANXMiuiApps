.class Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
.super Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefocusManager"
.end annotation


# instance fields
.field private mRefocusSupport:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;)V
    .locals 2
    .param p2, "specialTypeManager"    # Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    .prologue
    .line 3050
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    .line 3051
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->isDeviceSupportRefocus(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    .line 3052
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-eqz v0, :cond_0

    .line 3053
    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->addTypeCallback(JLcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;)V

    .line 3055
    :cond_0
    return-void
.end method


# virtual methods
.method public getEnterDrawableId()I
    .locals 1

    .prologue
    .line 3098
    const v0, 0x7f02004a

    return v0
.end method

.method protected handleEditorResult(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 3059
    if-nez p1, :cond_1

    .line 3076
    :cond_0
    :goto_0
    return v2

    .line 3063
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3064
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 3068
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3069
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3073
    invoke-static {p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendResultStatic(Landroid/content/Intent;)V

    .line 3074
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->setTargetPath(Ljava/lang/String;)V

    .line 3075
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->insertAndNotifyDataSet(Ljava/lang/String;)V

    .line 3076
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onEnterClick(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3088
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-nez v0, :cond_0

    .line 3094
    :goto_0
    return-void

    .line 3091
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/IntentUtil;->startAdvancedRefocusAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Activity;Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3092
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendEnterStatic()V

    .line 3093
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onStartEditor()V

    goto :goto_0
.end method

.method public onRecognized(Lcom/miui/gallery/model/BaseDataItem;Z)V
    .locals 1
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "result"    # Z

    .prologue
    .line 3081
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3082
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendExposureStatic()V

    .line 3084
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 3102
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->release()V

    .line 3103
    return-void
.end method
