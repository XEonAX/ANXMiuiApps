.class public Lcom/miui/gallery/assistant/jni/cluster/Cluster;
.super Ljava/lang/Object;
.source "Cluster.java"


# instance fields
.field private final imageIds:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0
    .param p1, "imageIds"    # [J

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/gallery/assistant/jni/cluster/Cluster;->imageIds:[J

    .line 8
    return-void
.end method


# virtual methods
.method public getImageIds()[J
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/assistant/jni/cluster/Cluster;->imageIds:[J

    return-object v0
.end method
