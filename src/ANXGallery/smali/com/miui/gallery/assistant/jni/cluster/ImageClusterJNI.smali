.class public Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;
.super Ljava/lang/Object;
.source "ImageClusterJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native extractFeature(J[BII)[F
.end method

.method public native getClusterResult(J[F[J[JII)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F[J[JII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/assistant/jni/cluster/Cluster;",
            ">;"
        }
    .end annotation
.end method

.method public native nativeCreate(FJ)J
.end method

.method public native nativeDestroy(J)V
.end method
