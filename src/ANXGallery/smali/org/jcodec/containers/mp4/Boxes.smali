.class public abstract Lorg/jcodec/containers/mp4/Boxes;
.super Ljava/lang/Object;
.source "Boxes.java"


# instance fields
.field protected final mappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public toClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "fourcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
