.class abstract Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewAware"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mInternalType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private final mInternalUri:Landroid/net/Uri;

.field private final mRequestTime:J

.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 2
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mRequestTime:J

    .line 826
    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalUri:Landroid/net/Uri;

    .line 827
    iput-object p3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 828
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)I
    .locals 10
    .param p1, "o"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 879
    if-nez p1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v2

    .line 882
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getRequestTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getRequestTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 883
    .local v0, "c":J
    cmp-long v3, v0, v8

    if-gtz v3, :cond_0

    .line 885
    cmp-long v2, v0, v8

    if-gez v2, :cond_2

    .line 886
    const/4 v2, -0x1

    goto :goto_0

    .line 888
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 817
    check-cast p1, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->compareTo(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 862
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 868
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 865
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 866
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    check-cast p1, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v3

    if-ne v0, v3, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public abstract getDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.end method

.method public abstract getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
.end method

.method public abstract getImageAware()Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
.end method

.method public abstract getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
.end method

.method final getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method final getInternalKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$000(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getInternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
.end method

.method public abstract getLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
.end method

.method public getRegionDecodeRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequestTime()J
    .locals 2

    .prologue
    .line 857
    iget-wide v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mRequestTime:J

    return-wide v0
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public getWrappedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageAware()Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageAware()Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    .line 874
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public abstract needDisplay()Z
.end method
