.class Lcom/miui/gallery/ui/PhotoDetailFragment$1;
.super Ljava/lang/Object;
.source "PhotoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 119
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 140
    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/IntentUtil;->jumpToExplore(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "path":Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .restart local v1    # "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 126
    check-cast v1, [D

    .end local v1    # "obj":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [D

    .line 127
    .local v0, "coordidate":[D
    aget-wide v4, v0, v8

    aget-wide v6, v0, v9

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/data/LocationUtil;->isValidateCoordinate(DD)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    aget-wide v6, v0, v8

    aget-wide v8, v0, v9

    invoke-static {v4, v6, v7, v8, v9}, Lcom/miui/gallery/util/IntentUtil;->showOnMap(Landroid/content/Context;DD)Z

    move-result v3

    .line 129
    .local v3, "ret":Z
    if-nez v3, :cond_2

    .line 130
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c02f3

    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 133
    .end local v3    # "ret":Z
    :cond_2
    const-string v4, "photo_detail"

    const-string/jumbo v5, "show_on_map"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x7f120228
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
