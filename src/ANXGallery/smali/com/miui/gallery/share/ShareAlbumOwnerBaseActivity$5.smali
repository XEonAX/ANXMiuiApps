.class Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$5;
.super Ljava/lang/Object;
.source "ShareAlbumOwnerBaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->kickUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$5;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$5;->onCompletion(Ljava/lang/Void;Landroid/util/Pair;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Landroid/util/Pair;IZ)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Void;
    .param p3, "error"    # I
    .param p4, "cancelled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p4, :cond_0

    .line 180
    const v0, 0x7f0c00cc

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const v0, 0x7f0c027a

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    goto :goto_0

    .line 187
    :cond_1
    const v0, 0x7f0c0279

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    goto :goto_0
.end method
