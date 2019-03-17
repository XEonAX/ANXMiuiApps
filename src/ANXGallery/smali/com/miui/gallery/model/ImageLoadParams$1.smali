.class final Lcom/miui/gallery/model/ImageLoadParams$1;
.super Ljava/lang/Object;
.source "ImageLoadParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/ImageLoadParams;
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
        "Lcom/miui/gallery/model/ImageLoadParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/model/ImageLoadParams;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 94
    new-instance v0, Lcom/miui/gallery/model/ImageLoadParams;

    invoke-direct {v0, p1}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/ImageLoadParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/model/ImageLoadParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/model/ImageLoadParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 98
    new-array v0, p1, [Lcom/miui/gallery/model/ImageLoadParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/ImageLoadParams$1;->newArray(I)[Lcom/miui/gallery/model/ImageLoadParams;

    move-result-object v0

    return-object v0
.end method
