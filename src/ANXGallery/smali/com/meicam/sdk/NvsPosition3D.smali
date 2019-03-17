.class public Lcom/meicam/sdk/NvsPosition3D;
.super Ljava/lang/Object;
.source "NvsPosition3D.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/meicam/sdk/NvsPosition3D;->x:F

    .line 30
    iput p2, p0, Lcom/meicam/sdk/NvsPosition3D;->y:F

    .line 31
    iput p3, p0, Lcom/meicam/sdk/NvsPosition3D;->z:F

    .line 32
    return-void
.end method
