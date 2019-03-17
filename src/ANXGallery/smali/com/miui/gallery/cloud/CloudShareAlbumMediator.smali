.class public Lcom/miui/gallery/cloud/CloudShareAlbumMediator;
.super Ljava/lang/Object;
.source "CloudShareAlbumMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudShareAlbumMediator$OnShareAlbumExitedListener;
    }
.end annotation


# static fields
.field private static final sSingleton:Lcom/miui/gallery/cloud/CloudShareAlbumMediator;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/CloudShareAlbumMediator$OnShareAlbumExitedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;->sSingleton:Lcom/miui/gallery/cloud/CloudShareAlbumMediator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/CloudShareAlbumMediator;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;->sSingleton:Lcom/miui/gallery/cloud/CloudShareAlbumMediator;

    return-object v0
.end method


# virtual methods
.method public onShareAlbumExited(Ljava/lang/String;)V
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudShareAlbumMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/CloudShareAlbumMediator$OnShareAlbumExitedListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/cloud/CloudShareAlbumMediator$OnShareAlbumExitedListener;->onExit(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
