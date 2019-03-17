.class public Lorg/android/spdy/SpdyDataProvider;
.super Ljava/lang/Object;
.source "SpdyDataProvider.java"


# instance fields
.field data:[B

.field public finished:Z

.field postBody:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "postBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/spdy/SpdyDataProvider;->data:[B

    .line 30
    iput-object p1, p0, Lorg/android/spdy/SpdyDataProvider;->postBody:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    .line 22
    iput-object p1, p0, Lorg/android/spdy/SpdyDataProvider;->data:[B

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/spdy/SpdyDataProvider;->postBody:Ljava/util/Map;

    .line 24
    return-void
.end method
