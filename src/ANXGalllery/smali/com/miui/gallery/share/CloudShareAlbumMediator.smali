.class public Lcom/miui/gallery/share/CloudShareAlbumMediator;
.super Ljava/lang/Object;
.source "CloudShareAlbumMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;
    }
.end annotation


# static fields
.field private static final sSingleton:Lcom/miui/gallery/share/CloudShareAlbumMediator;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/miui/gallery/share/CloudShareAlbumMediator;

    invoke-direct {v0}, Lcom/miui/gallery/share/CloudShareAlbumMediator;-><init>()V

    sput-object v0, Lcom/miui/gallery/share/CloudShareAlbumMediator;->sSingleton:Lcom/miui/gallery/share/CloudShareAlbumMediator;

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

    iput-object v0, p0, Lcom/miui/gallery/share/CloudShareAlbumMediator;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/share/CloudShareAlbumMediator;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miui/gallery/share/CloudShareAlbumMediator;->sSingleton:Lcom/miui/gallery/share/CloudShareAlbumMediator;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/share/CloudShareAlbumMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/share/CloudShareAlbumMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method
