.class Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;
.super Landroid/os/AsyncTask;
.source "FolderItemsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/model/DisplayFolderItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->refreshCloudFolderItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->access$002(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->access$000(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    iput-object p1, v0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mItems:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->access$100(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->access$200(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->this$0:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->access$200(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;->onLoaderUpdatedItems()V

    .line 105
    :cond_0
    return-void
.end method
