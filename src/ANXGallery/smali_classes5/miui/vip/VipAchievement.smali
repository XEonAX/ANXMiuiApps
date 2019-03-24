.class public Lmiui/vip/VipAchievement;
.super Ljava/lang/Object;
.source "VipAchievement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:J

.field public isOwned:Z

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lmiui/vip/VipAchievement$1;

    invoke-direct {v0}, Lmiui/vip/VipAchievement$1;-><init>()V

    sput-object v0, Lmiui/vip/VipAchievement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lmiui/vip/VipAchievement;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;

    .line 46
    new-instance v0, Lmiui/vip/VipAchievement;

    invoke-direct {v0}, Lmiui/vip/VipAchievement;-><init>()V

    .line 47
    .local v0, "info":Lmiui/vip/VipAchievement;
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lmiui/vip/VipAchievement;->id:J

    .line 48
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lmiui/vip/VipAchievement;->isOwned:Z

    .line 51
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget-wide v0, p0, Lmiui/vip/VipAchievement;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-object v0, p0, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lmiui/vip/VipAchievement;->isOwned:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
