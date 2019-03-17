.class Lcom/nexstreaming/app/common/thememath/a$b;
.super Ljava/lang/Object;
.source "NexTheme_Math.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/thememath/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:[F


# direct methods
.method constructor <init>(DDDD)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    double-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    double-to-float v2, p3

    aput v2, v0, v1

    const/4 v1, 0x2

    double-to-float v2, p5

    aput v2, v0, v1

    const/4 v1, 0x3

    double-to-float v2, p7

    aput v2, v0, v1

    iput-object v0, p0, Lcom/nexstreaming/app/common/thememath/a$b;->a:[F

    .line 30
    return-void
.end method

.method constructor <init>(FFFF)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iput-object v0, p0, Lcom/nexstreaming/app/common/thememath/a$b;->a:[F

    .line 27
    return-void
.end method
