.class final Lcom/miui/gallery/share/AlbumShareUIManager$8;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->applyToShareAlbum(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$msgWhenUpdate:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

.field final synthetic val$path:Lcom/miui/gallery/share/Path;

.field final synthetic val$updateListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$path:Lcom/miui/gallery/share/Path;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$applyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$updateListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iput-object p4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$msgWhenUpdate:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$path:Lcom/miui/gallery/share/Path;

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$applyListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$updateListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$8;->val$msgWhenUpdate:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/share/AlbumShareUIManager;->updateShareUrlLongAuto(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    .line 655
    return-void
.end method
