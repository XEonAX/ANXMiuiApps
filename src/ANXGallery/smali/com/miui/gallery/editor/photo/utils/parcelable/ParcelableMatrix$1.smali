.class final Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix$1;
.super Ljava/lang/Object;
.source "ParcelableMatrix.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;
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
        "Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 32
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 37
    new-array v0, p1, [Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix$1;->newArray(I)[Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    move-result-object v0

    return-object v0
.end method
