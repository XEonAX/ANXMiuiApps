.class final Lcom/miui/gallery/share/AlbumShareUIManager$22;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$blockMessage:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

.field final synthetic val$future:Lcom/miui/gallery/threadpool/Future;


# direct methods
.method constructor <init>(Lcom/miui/gallery/threadpool/Future;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$22;->val$future:Lcom/miui/gallery/threadpool/Future;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$22;->val$blockMessage:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$22;->val$future:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 1133
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$22;->val$blockMessage:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    iget-object v0, v0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$22;->val$blockMessage:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    iget-object v0, v0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 1136
    :cond_0
    return-void
.end method
