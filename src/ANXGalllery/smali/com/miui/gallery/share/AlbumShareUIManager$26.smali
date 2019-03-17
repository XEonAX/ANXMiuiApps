.class final Lcom/miui/gallery/share/AlbumShareUIManager$26;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->tryToAccept(Lcom/miui/gallery/share/Path;Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$path:Lcom/miui/gallery/share/Path;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$26;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$26;->val$path:Lcom/miui/gallery/share/Path;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$26;->val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1292
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$26;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$26;->val$activity:Landroid/app/Activity;

    const v4, 0x7f0c0314

    .line 1295
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1292
    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v0

    .line 1297
    .local v0, "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$26;->val$path:Lcom/miui/gallery/share/Path;

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$26;->val$acceptListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->access$200(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    .line 1298
    return-void
.end method
