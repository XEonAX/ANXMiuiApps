.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;
.super Ljava/lang/Object;
.source "Crop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AspectRatio"
.end annotation


# static fields
.field private static final RATIO_NONE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    invoke-direct {v0, v1, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;-><init>(FF)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->RATIO_NONE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mWidth:F

    .line 56
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mHeight:F

    .line 57
    return-void
.end method

.method static synthetic access$000()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->RATIO_NONE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mWidth:F

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mHeight:F

    return v0
.end method


# virtual methods
.method public getHeight(F)F
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mWidth:F

    div-float v0, p1, v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mHeight:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getWidth(F)F
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 64
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mHeight:F

    div-float v0, p1, v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->mWidth:F

    mul-float/2addr v0, v1

    return v0
.end method
