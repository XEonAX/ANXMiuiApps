.class public Lcom/meicam/sdk/NvsSize;
.super Ljava/lang/Object;
.source "NvsSize.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/meicam/sdk/NvsSize;->width:I

    .line 23
    iput p2, p0, Lcom/meicam/sdk/NvsSize;->height:I

    .line 24
    return-void
.end method
