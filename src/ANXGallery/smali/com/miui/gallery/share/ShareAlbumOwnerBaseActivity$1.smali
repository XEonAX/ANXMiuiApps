.class Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$1;
.super Ljava/lang/Object;
.source "ShareAlbumOwnerBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$1;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$1;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->access$000(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$1;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->updateStatus()V

    .line 67
    return-void
.end method
