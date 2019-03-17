.class Lcom/miui/gallery/search/SearchStatusLoader$2;
.super Landroid/content/BroadcastReceiver;
.source "SearchStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/SearchStatusLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/SearchStatusLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/SearchStatusLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/SearchStatusLoader;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/gallery/search/SearchStatusLoader$2;->this$0:Lcom/miui/gallery/search/SearchStatusLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    const-string v0, "com.miui.gallery.action.FIRST_SYNC_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchStatusLoader$2;->this$0:Lcom/miui/gallery/search/SearchStatusLoader;

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchStatusLoader;->onContentChanged()V

    .line 132
    :cond_1
    return-void
.end method
