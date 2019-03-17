.class Lcom/miui/gallery/hybrid/GalleryHybridFragment$2;
.super Ljava/lang/Object;
.source "GalleryHybridFragment.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/GalleryHybridFragment;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$2;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetActualPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "GalleryHybridFragment"

    const-string v1, "The url should not be null, load nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$2;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
