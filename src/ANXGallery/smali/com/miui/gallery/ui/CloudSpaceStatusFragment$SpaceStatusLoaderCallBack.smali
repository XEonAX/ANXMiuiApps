.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;
.super Ljava/lang/Object;
.source "CloudSpaceStatusFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpaceStatusLoaderCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;->this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;->this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V
    .locals 1
    .param p2, "data"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;",
            ">;",
            "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;->this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    invoke-static {v0, p2}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->access$200(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V

    .line 137
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p2, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;>;"
    return-void
.end method
