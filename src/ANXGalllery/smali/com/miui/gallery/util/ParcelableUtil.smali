.class public Lcom/miui/gallery/util/ParcelableUtil;
.super Ljava/lang/Object;
.source "ParcelableUtil.java"


# direct methods
.method public static marshall(Landroid/os/Parcelable;)[B
    .locals 3
    .param p0, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 12
    .local v0, "bytes":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    return-object v0
.end method

.method public static unmarshall([B)Landroid/os/Parcel;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 23
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 25
    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/ParcelableUtil;->unmarshall([B)Landroid/os/Parcel;

    move-result-object v0

    .line 18
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method
