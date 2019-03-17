.class Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;
.super Landroid/database/ContentObserver;
.source "ShareAlbumOwnerBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .line 41
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iget-object v0, v0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->rereloadItem()V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->updateStatus()V

    .line 49
    return-void
.end method
