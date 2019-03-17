.class Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$1;
.super Ljava/lang/Object;
.source "ShareAlbumSharerBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$1;->this$0:Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$1;->this$0:Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->setResult(I)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$1;->this$0:Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->finish()V

    .line 73
    return-void
.end method
