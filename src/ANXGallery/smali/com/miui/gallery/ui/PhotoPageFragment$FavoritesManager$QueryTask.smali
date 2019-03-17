.class Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;
.super Landroid/os/AsyncTask;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/model/FavoriteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Lcom/miui/gallery/model/BaseDataItem;

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
    .param p2, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3918
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3919
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->item:Lcom/miui/gallery/model/BaseDataItem;

    .line 3920
    return-void
.end method

.method static synthetic access$5900(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->item:Lcom/miui/gallery/model/BaseDataItem;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/model/FavoriteInfo;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 3924
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->item:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v0, :cond_1

    .line 3925
    :cond_0
    const/4 v0, 0x0

    .line 3927
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->item:Lcom/miui/gallery/model/BaseDataItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->access$6300(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->getFavoriteInfo(Z)Lcom/miui/gallery/model/FavoriteInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3915
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/model/FavoriteInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/model/FavoriteInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/miui/gallery/model/FavoriteInfo;

    .prologue
    .line 3932
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3938
    :goto_0
    return-void

    .line 3935
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->item:Lcom/miui/gallery/model/BaseDataItem;

    .line 3936
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->access$6402(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Lcom/miui/gallery/model/FavoriteInfo;)Lcom/miui/gallery/model/FavoriteInfo;

    .line 3937
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->refreshStatus()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3915
    check-cast p1, Lcom/miui/gallery/model/FavoriteInfo;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->onPostExecute(Lcom/miui/gallery/model/FavoriteInfo;)V

    return-void
.end method
