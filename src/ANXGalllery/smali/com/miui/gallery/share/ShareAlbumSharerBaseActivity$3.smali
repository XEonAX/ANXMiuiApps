.class final Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;
.super Ljava/lang/Object;
.source "ShareAlbumSharerBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->exitShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$msg:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;->val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iput-object p3, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;->val$msg:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/share/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/share/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;->val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;->val$msg:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->exitAlbumShareAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    .line 153
    return-void
.end method
