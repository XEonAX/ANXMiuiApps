.class Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 881
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;->type:I

    .line 882
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stripIndex"    # I

    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;->type:I

    .line 886
    iput p2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 887
    return-void
.end method
