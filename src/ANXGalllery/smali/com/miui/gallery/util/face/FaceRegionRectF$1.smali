.class final Lcom/miui/gallery/util/face/FaceRegionRectF$1;
.super Ljava/lang/Object;
.source "FaceRegionRectF.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/face/FaceRegionRectF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/gallery/util/face/FaceRegionRectF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    invoke-direct {v0}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>()V

    .line 43
    .local v0, "r":Lcom/miui/gallery/util/face/FaceRegionRectF;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/face/FaceRegionRectF;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/face/FaceRegionRectF$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/miui/gallery/util/face/FaceRegionRectF;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/face/FaceRegionRectF$1;->newArray(I)[Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v0

    return-object v0
.end method
