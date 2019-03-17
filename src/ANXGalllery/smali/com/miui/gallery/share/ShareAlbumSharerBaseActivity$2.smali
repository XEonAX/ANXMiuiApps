.class final Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;
.super Ljava/lang/Object;
.source "ShareAlbumSharerBaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->exitShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
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


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$runOnExitShareSuccessfully:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$albumName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$runOnExitShareSuccessfully:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Void;IZ)V
    .locals 9
    .param p1, "id"    # Lcom/miui/gallery/share/Path;
    .param p2, "result"    # Ljava/lang/Void;
    .param p3, "error"    # I
    .param p4, "cancelled"    # Z

    .prologue
    const v8, 0x7f0c03e8

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 125
    if-eqz p4, :cond_0

    .line 126
    const v0, 0x7f0c00cc

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    if-nez p3, :cond_1

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0c01cb

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$activity:Landroid/app/Activity;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$albumName:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 132
    invoke-virtual {v4, v8, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/share/UIHelper;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$runOnExitShareSuccessfully:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0c01c9

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$activity:Landroid/app/Activity;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->val$albumName:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 136
    invoke-virtual {v4, v8, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 135
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/share/UIHelper;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 121
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/Void;IZ)V

    return-void
.end method
