.class Landroid/support/v4/media/MediaMetadataCompatApi21;
.super Ljava/lang/Object;
.source "MediaMetadataCompatApi21.java"


# direct methods
.method public static writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0
    .param p0, "metadataObj"    # Ljava/lang/Object;
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    check-cast p0, Landroid/media/MediaMetadata;

    .end local p0    # "metadataObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    return-void
.end method
