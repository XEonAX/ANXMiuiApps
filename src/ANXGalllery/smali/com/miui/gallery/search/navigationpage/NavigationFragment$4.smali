.class Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;
.super Ljava/lang/Object;
.source "NavigationFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/navigationpage/NavigationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/miui/gallery/search/SearchStatusLoader;

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$600(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v2}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$700(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/search/SearchStatusLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Integer;)V
    .locals 2
    .param p2, "data"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$500(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/StatusHandleHelper;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper;->updateBaseStatus(I)V

    .line 185
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Integer;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$500(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/StatusHandleHelper;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper;->updateBaseStatus(I)V

    .line 190
    return-void
.end method
