.class final Lcom/miui/gallery/share/AlbumShareUIManager$7;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->applyToShareAlbum(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;Z)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$activityRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$applyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$denyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$path:Lcom/miui/gallery/share/Path;

.field final synthetic val$showAcceptDialog:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/miui/gallery/share/Path;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$activityRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$path:Lcom/miui/gallery/share/Path;

    iput-boolean p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$showAcceptDialog:Z

    iput-object p4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iput-object p5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$denyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iput-object p6, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p7, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$applyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "p"    # Lcom/miui/gallery/share/Path;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, "handled":Z
    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 622
    .local v0, "activity":Landroid/app/Activity;
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$path:Lcom/miui/gallery/share/Path;

    invoke-static {v3}, Lcom/miui/gallery/share/AlbumShareUIManager;->findSharerMediaSet(Lcom/miui/gallery/share/Path;)Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v2

    .line 624
    .local v2, "mediaSet":Lcom/miui/gallery/share/CloudSharerMediaSet;
    if-eqz v2, :cond_0

    .line 625
    new-instance v3, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/miui/gallery/share/AlbumShareUIManager$7$1;-><init>(Lcom/miui/gallery/share/AlbumShareUIManager$7;Landroid/app/Activity;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    iget-object v4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$path:Lcom/miui/gallery/share/Path;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->doAfterCloudMediaSetSetReload(Ljava/lang/Runnable;Lcom/miui/gallery/share/Path;Z)V

    .line 639
    const/4 v1, 0x1

    .line 643
    .end local v2    # "mediaSet":Lcom/miui/gallery/share/CloudSharerMediaSet;
    :cond_0
    if-nez v1, :cond_2

    .line 644
    const/16 v3, -0x70

    if-ne p3, v3, :cond_1

    const/16 p3, -0x3ea

    .line 645
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$7;->val$applyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-static {v3, p3}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;I)V

    .line 647
    :cond_2
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 616
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareUIManager$7;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/String;IZ)V

    return-void
.end method
