.class public interface abstract Lcn/kuaipan/android/http/IKscDecoder;
.super Ljava/lang/Object;
.source "IKscDecoder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract canEnd()Z
.end method

.method public abstract end()V
.end method

.method public abstract fillData([BII)V
.end method

.method public abstract init()V
.end method

.method public abstract needFill()I
.end method

.method public abstract readDecodeData([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method public abstract skip(J)V
.end method

.method public abstract supportRepeat()Z
.end method
