.class public Lorg/jcodec/common/JCodecUtil2;
.super Ljava/lang/Object;
.source "JCodecUtil2.java"


# direct methods
.method public static asciiString(Ljava/lang/String;)[B
    .locals 1
    .param p0, "fourcc"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {p0}, Lorg/jcodec/platform/Platform;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
