.class public Lorg/jcodec/containers/mp4/MP4Util$Movie;
.super Ljava/lang/Object;
.source "MP4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodec/containers/mp4/MP4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Movie"
.end annotation


# instance fields
.field private ftyp:Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

.field private moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/FileTypeBox;Lorg/jcodec/containers/mp4/boxes/MovieBox;)V
    .locals 0
    .param p1, "ftyp"    # Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
    .param p2, "moov"    # Lorg/jcodec/containers/mp4/boxes/MovieBox;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->ftyp:Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    .line 37
    iput-object p2, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;

    .line 38
    return-void
.end method


# virtual methods
.method public getMoov()Lorg/jcodec/containers/mp4/boxes/MovieBox;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jcodec/containers/mp4/MP4Util$Movie;->moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;

    return-object v0
.end method
