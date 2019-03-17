.class public Lcom/alibaba/mtl/log/d/e$a;
.super Ljava/lang/Object;
.source "e.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public E:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mtl/log/d/e$a;->E:I

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/log/d/e$a;->data:[B

    .line 257
    return-void
.end method
