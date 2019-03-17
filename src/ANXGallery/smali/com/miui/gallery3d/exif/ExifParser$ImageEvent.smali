.class Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery3d/exif/ExifParser;
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
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 891
    iput p1, p0, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;->type:I

    .line 892
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stripIndex"    # I

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p1, p0, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;->type:I

    .line 896
    iput p2, p0, Lcom/miui/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 897
    return-void
.end method
