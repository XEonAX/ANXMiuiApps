.class Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;
.super Ljava/lang/Object;
.source "ShareAlbumOwnerBaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->tryToCreateCloudItem()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 244
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;->onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Void;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->access$300(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;->onChange(Z)V

    .line 249
    new-instance v0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6$1;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;)V

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iget-object v1, v1, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 256
    invoke-virtual {v1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getPath()Lcom/miui/gallery/share/Path;

    move-result-object v1

    .line 249
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->doAfterCloudMediaSetSetReload(Ljava/lang/Runnable;Lcom/miui/gallery/share/Path;Z)V

    .line 257
    return-void
.end method
