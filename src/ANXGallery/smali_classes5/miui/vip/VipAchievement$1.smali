.class Lmiui/vip/VipAchievement$1;
.super Ljava/lang/Object;
.source "VipAchievement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipAchievement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/vip/VipAchievement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lmiui/vip/VipAchievement$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/vip/VipAchievement;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/vip/VipAchievement;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 18
    invoke-static {p1}, Lmiui/vip/VipAchievement;->readFromParcel(Landroid/os/Parcel;)Lmiui/vip/VipAchievement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lmiui/vip/VipAchievement$1;->newArray(I)[Lmiui/vip/VipAchievement;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/vip/VipAchievement;
    .locals 1
    .param p1, "size"    # I

    .line 23
    new-array v0, p1, [Lmiui/vip/VipAchievement;

    return-object v0
.end method
