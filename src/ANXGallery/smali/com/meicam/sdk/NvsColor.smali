.class public Lcom/meicam/sdk/NvsColor;
.super Ljava/lang/Object;
.source "NvsColor.java"


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/meicam/sdk/NvsColor;->r:F

    .line 29
    iput p2, p0, Lcom/meicam/sdk/NvsColor;->g:F

    .line 30
    iput p3, p0, Lcom/meicam/sdk/NvsColor;->b:F

    .line 31
    iput p4, p0, Lcom/meicam/sdk/NvsColor;->a:F

    .line 32
    return-void
.end method
