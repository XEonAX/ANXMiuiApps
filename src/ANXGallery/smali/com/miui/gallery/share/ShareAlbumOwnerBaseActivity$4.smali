.class Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$4;
.super Ljava/lang/Object;
.source "ShareAlbumOwnerBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->showKickUserDialog(Lcom/miui/gallery/share/CloudUserCacheEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

.field final synthetic val$shareUser:Lcom/miui/gallery/share/CloudUserCacheEntry;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;Lcom/miui/gallery/share/CloudUserCacheEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$4;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iput-object p2, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$4;->val$shareUser:Lcom/miui/gallery/share/CloudUserCacheEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$4;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$4;->val$shareUser:Lcom/miui/gallery/share/CloudUserCacheEntry;

    iget-object v1, v1, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->access$200(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;Ljava/lang/String;)V

    .line 169
    return-void
.end method
