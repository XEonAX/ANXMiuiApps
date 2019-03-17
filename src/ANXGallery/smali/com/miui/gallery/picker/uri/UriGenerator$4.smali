.class Lcom/miui/gallery/picker/uri/UriGenerator$4;
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
    .line 267
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$4;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$4;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$4;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->cancel()V

    .line 273
    :cond_0
    return-void
.end method
