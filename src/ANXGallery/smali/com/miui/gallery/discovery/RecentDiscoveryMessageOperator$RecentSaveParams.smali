.class public Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;
.super Ljava/lang/Object;
.source "RecentDiscoveryMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentSaveParams"
.end annotation


# instance fields
.field private mMediaCount:I

.field private mThumbUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "mediaCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "thumbUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;->mMediaCount:I

    .line 196
    iput-object p2, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;->mThumbUrls:Ljava/util/ArrayList;

    .line 197
    return-void
.end method


# virtual methods
.method public getMediaCount()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;->mMediaCount:I

    return v0
.end method

.method public getThumbUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;->mThumbUrls:Ljava/util/ArrayList;

    return-object v0
.end method
