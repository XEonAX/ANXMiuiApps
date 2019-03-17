.class public Lcom/miui/gallery/video/editor/model/LocalResource;
.super Lcom/miui/gallery/net/resource/Resource;
.source "LocalResource.java"


# instance fields
.field public imageId:I

.field public isInternational:I

.field public nameKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/net/resource/Resource;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "imageId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/net/resource/Resource;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/miui/gallery/video/editor/model/LocalResource;->imageId:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/model/LocalResource;->isInternational:I

    .line 27
    return-void
.end method


# virtual methods
.method public isInternational()Z
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/video/editor/model/LocalResource;->isInternational:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
