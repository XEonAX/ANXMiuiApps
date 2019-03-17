.class final Lcom/miui/gallery/share/AlbumShareUIManager$27;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->onNegativeClick(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Lcom/miui/gallery/share/Path;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Void;IZ)V
    .locals 1
    .param p1, "key"    # Lcom/miui/gallery/share/Path;
    .param p2, "data"    # Ljava/lang/Void;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    .line 1328
    if-eqz p4, :cond_0

    .line 1329
    const v0, 0x7f0c00cc

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 1335
    :goto_0
    return-void

    .line 1330
    :cond_0
    invoke-static {p3}, Lcom/miui/gallery/cloud/GalleryErrorCode;->isClientError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    const v0, 0x7f0c0310

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    goto :goto_0

    .line 1333
    :cond_1
    const v0, 0x7f0c0328

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 1324
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareUIManager$27;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Void;IZ)V

    return-void
.end method
