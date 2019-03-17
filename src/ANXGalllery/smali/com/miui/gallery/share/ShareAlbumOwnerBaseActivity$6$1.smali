.class Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6$1;
.super Ljava/lang/Object;
.source "ShareAlbumOwnerBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;->onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6$1;->this$1:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6$1;->this$1:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;

    iget-object v0, v0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->updateStatus()V

    .line 254
    return-void
.end method
