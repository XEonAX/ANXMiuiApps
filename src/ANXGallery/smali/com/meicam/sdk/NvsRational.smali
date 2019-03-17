.class public Lcom/meicam/sdk/NvsRational;
.super Ljava/lang/Object;
.source "NvsRational.java"


# instance fields
.field public den:I

.field public num:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/meicam/sdk/NvsRational;->num:I

    .line 29
    iput p2, p0, Lcom/meicam/sdk/NvsRational;->den:I

    .line 30
    return-void
.end method
