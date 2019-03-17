.class public Lorg/jcodec/containers/mp4/BoxFactory;
.super Ljava/lang/Object;
.source "BoxFactory.java"

# interfaces
.implements Lorg/jcodec/containers/mp4/IBoxFactory;


# static fields
.field private static instance:Lorg/jcodec/containers/mp4/IBoxFactory;


# instance fields
.field private boxes:Lorg/jcodec/containers/mp4/Boxes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lorg/jcodec/containers/mp4/BoxFactory;

    new-instance v1, Lorg/jcodec/containers/mp4/DefaultBoxes;

    invoke-direct {v1}, Lorg/jcodec/containers/mp4/DefaultBoxes;-><init>()V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/BoxFactory;-><init>(Lorg/jcodec/containers/mp4/Boxes;)V

    sput-object v0, Lorg/jcodec/containers/mp4/BoxFactory;->instance:Lorg/jcodec/containers/mp4/IBoxFactory;

    return-void
.end method

.method public constructor <init>(Lorg/jcodec/containers/mp4/Boxes;)V
    .locals 0
    .param p1, "boxes"    # Lorg/jcodec/containers/mp4/Boxes;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/jcodec/containers/mp4/BoxFactory;->boxes:Lorg/jcodec/containers/mp4/Boxes;

    .line 26
    return-void
.end method

.method public static getDefault()Lorg/jcodec/containers/mp4/IBoxFactory;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/jcodec/containers/mp4/BoxFactory;->instance:Lorg/jcodec/containers/mp4/IBoxFactory;

    return-object v0
.end method


# virtual methods
.method public newBox(Lorg/jcodec/containers/mp4/boxes/Header;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 5
    .param p1, "header"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 30
    iget-object v3, p0, Lorg/jcodec/containers/mp4/BoxFactory;->boxes:Lorg/jcodec/containers/mp4/Boxes;

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jcodec/containers/mp4/Boxes;->toClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 31
    .local v1, "claz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jcodec/containers/mp4/boxes/Box;>;"
    if-nez v1, :cond_1

    .line 32
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    invoke-direct {v0, p1}, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lorg/jcodec/platform/Platform;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 34
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    instance-of v3, v0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 35
    check-cast v2, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    .line 36
    .local v2, "nodebox":Lorg/jcodec/containers/mp4/boxes/NodeBox;
    invoke-virtual {v2, p0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->setFactory(Lorg/jcodec/containers/mp4/IBoxFactory;)V

    goto :goto_0
.end method
