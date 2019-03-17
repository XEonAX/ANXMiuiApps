.class Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;
.super Ljava/lang/Object;
.source "SlideShowFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlideShowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideLoaderCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlideShowFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/SlideShowFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/SlideShowFragment;Lcom/miui/gallery/ui/SlideShowFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/SlideShowFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/SlideShowFragment$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;-><init>(Lcom/miui/gallery/ui/SlideShowFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const-string v1, "photo_uri"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/loader/PhotoLoaderManager;->getInstance()Lcom/miui/gallery/loader/PhotoLoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlideShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/miui/gallery/loader/PhotoLoaderManager;->getPhotoDataSet(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;

    move-result-object v1

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 5
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 193
    move-object v1, p2

    check-cast v1, Lcom/miui/gallery/model/BaseDataSet;

    .line 194
    .local v1, "set":Lcom/miui/gallery/model/BaseDataSet;
    iget-object v2, p0, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/SlideShowFragment;->access$400(Lcom/miui/gallery/ui/SlideShowFragment;)Lcom/miui/gallery/adapter/SlideShowAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/SlideShowAdapter;->getShowIndex()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    .line 195
    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlideShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_init_position"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/SlideShowFragment;->access$400(Lcom/miui/gallery/ui/SlideShowFragment;)Lcom/miui/gallery/adapter/SlideShowAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->changeDataSet(Lcom/miui/gallery/model/BaseDataSet;I)V

    .line 198
    return-void

    .line 195
    .end local v0    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    .line 196
    invoke-static {v2}, Lcom/miui/gallery/ui/SlideShowFragment;->access$400(Lcom/miui/gallery/ui/SlideShowFragment;)Lcom/miui/gallery/adapter/SlideShowAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/SlideShowAdapter;->getShowIndex()I

    move-result v0

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 203
    return-void
.end method
