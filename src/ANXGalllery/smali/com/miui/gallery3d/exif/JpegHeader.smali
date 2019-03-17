.class Lcom/miui/gallery3d/exif/JpegHeader;
.super Ljava/lang/Object;
.source "JpegHeader.java"


# direct methods
.method public static final isSofMarker(S)Z
    .locals 1
    .param p0, "marker"    # S

    .prologue
    .line 36
    const/16 v0, -0x40

    if-lt p0, v0, :cond_0

    const/16 v0, -0x31

    if-gt p0, v0, :cond_0

    const/16 v0, -0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, -0x38

    if-eq p0, v0, :cond_0

    const/16 v0, -0x34

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
