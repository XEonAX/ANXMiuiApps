.class Lcom/miui/gallery/share/ShareAlbumBaseActivity$3;
.super Ljava/lang/Object;
.source "ShareAlbumBaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumBaseActivity;->syncFromServer()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/ShareAlbumBaseActivity$3;->onCompletion(Ljava/lang/Void;Ljava/lang/Void;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Ljava/lang/Void;IZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Void;
    .param p2, "data"    # Ljava/lang/Void;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->onUpdateProgressChanged(I)V

    .line 169
    return-void
.end method
