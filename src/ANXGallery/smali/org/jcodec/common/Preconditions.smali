.class public final Lorg/jcodec/common/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public static checkState(Z)V
    .locals 1
    .param p0, "expression"    # Z

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 106
    :cond_0
    return-void
.end method
