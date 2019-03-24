.class Lmiui/cloud/backup/data/KeyJsonSettingItem$1;
.super Ljava/lang/Object;
.source "KeyJsonSettingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/backup/data/KeyJsonSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/cloud/backup/data/KeyJsonSettingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lmiui/cloud/backup/data/KeyJsonSettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/cloud/backup/data/KeyJsonSettingItem;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/cloud/backup/data/KeyJsonSettingItem;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 58
    new-instance v0, Lmiui/cloud/backup/data/KeyJsonSettingItem;

    invoke-direct {v0}, Lmiui/cloud/backup/data/KeyJsonSettingItem;-><init>()V

    .line 59
    .local v0, "obj":Lmiui/cloud/backup/data/KeyJsonSettingItem;
    invoke-virtual {v0, p1}, Lmiui/cloud/backup/data/KeyJsonSettingItem;->fillFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lmiui/cloud/backup/data/KeyJsonSettingItem$1;->newArray(I)[Lmiui/cloud/backup/data/KeyJsonSettingItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/cloud/backup/data/KeyJsonSettingItem;
    .locals 1
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lmiui/cloud/backup/data/KeyJsonSettingItem;

    return-object v0
.end method
