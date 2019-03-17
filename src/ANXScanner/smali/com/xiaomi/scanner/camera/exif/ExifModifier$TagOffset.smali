.class Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/exif/ExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)V
    .locals 0
    .param p1, "tag"    # Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .param p2, "offset"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 43
    iput p2, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;->mOffset:I

    .line 44
    return-void
.end method
