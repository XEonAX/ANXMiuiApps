.class public Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;
.super Ljava/lang/Object;
.source "SimpleBoxFactory.java"

# interfaces
.implements Lorg/jcodec/containers/mp4/IBoxFactory;


# instance fields
.field private boxes:Lorg/jcodec/containers/mp4/Boxes;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/Boxes;)V
    .locals 0
    .param p1, "boxes"    # Lorg/jcodec/containers/mp4/Boxes;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;->boxes:Lorg/jcodec/containers/mp4/Boxes;

    .line 12
    return-void
.end method


# virtual methods
.method public newBox(Lorg/jcodec/containers/mp4/boxes/Header;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 4
    .param p1, "header"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 16
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;->boxes:Lorg/jcodec/containers/mp4/Boxes;

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->toClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 17
    .local v1, "claz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jcodec/containers/mp4/boxes/Box;>;"
    if-nez v1, :cond_0

    .line 18
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    invoke-direct {v0, p1}, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 20
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/jcodec/platform/Platform;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 20
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    goto :goto_0
.end method
