.class Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
.super Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;
.source "PreloadMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/PreloadMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadViewAware"
.end annotation


# instance fields
.field protected position:I


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V
    .locals 0
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .line 176
    return-void
.end method


# virtual methods
.method public setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    .locals 0
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->imageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 189
    return-object p0
.end method

.method public setImageUri(Ljava/lang/String;)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->imageUri:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public setPosition(I)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->position:I

    .line 199
    return-object p0
.end method

.method public setScaleType(Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;
    .locals 0
    .param p1, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadViewAware;->scaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 194
    return-object p0
.end method
