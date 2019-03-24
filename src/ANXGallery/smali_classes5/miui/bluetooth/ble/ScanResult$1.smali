.class Lmiui/bluetooth/ble/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/bluetooth/ble/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lmiui/bluetooth/ble/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/bluetooth/ble/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/bluetooth/ble/ScanResult;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 162
    new-instance v0, Lmiui/bluetooth/ble/ScanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/bluetooth/ble/ScanResult;-><init>(Landroid/os/Parcel;Lmiui/bluetooth/ble/ScanResult$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lmiui/bluetooth/ble/ScanResult$1;->newArray(I)[Lmiui/bluetooth/ble/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/bluetooth/ble/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .line 167
    new-array v0, p1, [Lmiui/bluetooth/ble/ScanResult;

    return-object v0
.end method
