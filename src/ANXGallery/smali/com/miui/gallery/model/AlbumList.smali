.class public Lcom/miui/gallery/model/AlbumList;
.super Ljava/util/ArrayList;
.source "AlbumList.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/model/Album;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method
