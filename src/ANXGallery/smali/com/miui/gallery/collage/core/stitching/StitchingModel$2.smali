.class Lcom/miui/gallery/collage/core/stitching/StitchingModel$2;
.super Ljava/lang/Object;
.source "StitchingModel.java"

# interfaces
.implements Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/core/stitching/StitchingModel;->countHeight(ILcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;[Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

.field final synthetic val$bitmaps:[Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/stitching/StitchingModel;[Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingModel$2;->this$0:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/stitching/StitchingModel$2;->val$bitmaps:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingModel$2;->val$bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingModel$2;->val$bitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method
