.class Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;
.super Ljava/lang/Object;
.source "CropperActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->access$500(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)Lcom/miui/gallery/editor/photo/app/CropperActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->access$500(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)Lcom/miui/gallery/editor/photo/app/CropperActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->access$600(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;-><init>(Lcom/miui/gallery/editor/photo/app/CropperActivity;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 428
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->access$500(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)Lcom/miui/gallery/editor/photo/app/CropperActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->setResult(ILandroid/content/Intent;)V

    .line 434
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->access$500(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)Lcom/miui/gallery/editor/photo/app/CropperActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->finish()V

    .line 435
    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->access$500(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)Lcom/miui/gallery/editor/photo/app/CropperActivity;

    move-result-object v1

    const v2, 0x7f0c0299

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 439
    return-void
.end method
