.class Lcom/miui/gallery/picker/uri/UriGenerator$3;
.super Ljava/lang/Object;
.source "UriGenerator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/UriGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/uri/UriGenerator;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$3;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03c6

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 259
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$3;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$300(Lcom/miui/gallery/picker/uri/UriGenerator;Z)V

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$3;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$400(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    goto :goto_0
.end method
