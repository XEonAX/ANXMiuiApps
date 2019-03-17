.class Lcom/miui/gallery/ui/AIAlbumDisplayHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "AIAlbumDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AIAlbumDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$2;->this$0:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    if-eqz p2, :cond_0

    const-string v0, "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$2;->this$0:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->access$100(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;)V

    .line 150
    :cond_0
    return-void
.end method
