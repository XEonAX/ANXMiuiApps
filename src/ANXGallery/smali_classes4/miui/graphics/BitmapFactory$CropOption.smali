.class public Lmiui/graphics/BitmapFactory$CropOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public borderColor:I

.field public borderWidth:I

.field public rx:I

.field public ry:I

.field public srcBmpDrawingArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput p1, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 741
    iput p2, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 742
    iput p3, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 743
    iput p4, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    .line 744
    return-void
.end method

.method public constructor <init>(Lmiui/graphics/BitmapFactory$CropOption;)V
    .locals 1

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 748
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 749
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 750
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    .line 751
    iget-object p1, p1, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    iput-object p1, p0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 752
    return-void
.end method
