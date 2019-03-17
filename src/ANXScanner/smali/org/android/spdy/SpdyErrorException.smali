.class public Lorg/android/spdy/SpdyErrorException;
.super Ljava/lang/RuntimeException;
.source "SpdyErrorException.java"


# static fields
.field private static final serialVersionUID:J = 0x3d6141bad21a9e4dL


# instance fields
.field private error:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 18
    iput p1, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "errCode"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 30
    iput p2, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "errCode"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 44
    iput p3, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "errCode"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 56
    iput p2, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    .line 57
    return-void
.end method


# virtual methods
.method public SpdyErrorGetCode()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/android/spdy/SpdyErrorException;->error:I

    return v0
.end method
