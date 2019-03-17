.class public Lorg/jcodec/movtool/MetadataEditor;
.super Ljava/lang/Object;
.source "MetadataEditor.java"


# instance fields
.field private keyedMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 0
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "keyedMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jcodec/containers/mp4/boxes/MetaValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/jcodec/movtool/MetadataEditor;->source:Ljava/io/File;

    .line 25
    iput-object p2, p0, Lorg/jcodec/movtool/MetadataEditor;->keyedMeta:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public static createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;
    .locals 5
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lorg/jcodec/containers/mp4/MP4Util;->parseFullMovie(Ljava/io/File;)Lorg/jcodec/containers/mp4/MP4Util$Movie;

    move-result-object v1

    .line 36
    .local v1, "movie":Lorg/jcodec/containers/mp4/MP4Util$Movie;
    const/4 v0, 0x0

    .line 37
    .local v0, "keyedMeta":Lorg/jcodec/containers/mp4/boxes/MetaBox;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/MP4Util$Movie;->getMoov()Lorg/jcodec/containers/mp4/boxes/MovieBox;

    move-result-object v2

    const-class v3, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    .end local v0    # "keyedMeta":Lorg/jcodec/containers/mp4/boxes/MetaBox;
    check-cast v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    .line 41
    .restart local v0    # "keyedMeta":Lorg/jcodec/containers/mp4/boxes/MetaBox;
    :cond_0
    new-instance v3, Lorg/jcodec/movtool/MetadataEditor;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-direct {v3, p0, v2}, Lorg/jcodec/movtool/MetadataEditor;-><init>(Ljava/io/File;Ljava/util/Map;)V

    return-object v3

    :cond_1
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getKeyedMeta()Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getKeyedMeta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jcodec/movtool/MetadataEditor;->keyedMeta:Ljava/util/Map;

    return-object v0
.end method
