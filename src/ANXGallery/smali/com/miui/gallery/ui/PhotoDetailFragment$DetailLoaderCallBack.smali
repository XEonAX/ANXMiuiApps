.class Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;
.super Ljava/lang/Object;
.source "PhotoDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailLoaderCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/ui/PhotoDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoDetailFragment$1;

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 571
    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$300(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/model/BaseDataItem;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 576
    if-eqz p2, :cond_0

    .line 577
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    check-cast p2, Lcom/miui/gallery/model/PhotoDetailInfo;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$002(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/model/PhotoDetailInfo;)Lcom/miui/gallery/model/PhotoDetailInfo;

    .line 578
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$400(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 585
    return-void
.end method
