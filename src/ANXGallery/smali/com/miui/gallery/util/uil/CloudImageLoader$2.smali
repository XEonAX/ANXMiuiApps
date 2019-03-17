.class Lcom/miui/gallery/util/uil/CloudImageLoader$2;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/CloudImageLoader;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$2;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "curSize"    # J
    .param p5, "totalSize"    # J

    .prologue
    .line 192
    iget-object v8, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$2;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    const/4 v9, 0x4

    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$2;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V

    invoke-static {v8, v9, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$100(Lcom/miui/gallery/util/uil/CloudImageLoader;ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    .line 193
    return-void
.end method
