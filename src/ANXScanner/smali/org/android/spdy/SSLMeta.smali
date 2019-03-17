.class public Lorg/android/spdy/SSLMeta;
.super Ljava/lang/Object;
.source "SSLMeta.java"


# instance fields
.field public sslMeta:[B

.field public sslMetaLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/spdy/SSLMeta;->sslMeta:[B

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/spdy/SSLMeta;->sslMetaLength:I

    .line 11
    return-void
.end method
