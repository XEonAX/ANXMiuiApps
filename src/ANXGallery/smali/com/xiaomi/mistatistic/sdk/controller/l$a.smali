.class public final Lcom/xiaomi/mistatistic/sdk/controller/l$a;
.super Ljava/io/FilterInputStream;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 276
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 280
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$a;->a:Z

    if-nez v0, :cond_0

    .line 281
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 282
    if-eq v0, v1, :cond_0

    .line 287
    :goto_0
    return v0

    .line 286
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$a;->a:Z

    move v0, v1

    .line 287
    goto :goto_0
.end method
