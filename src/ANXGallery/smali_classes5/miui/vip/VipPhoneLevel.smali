.class public Lmiui/vip/VipPhoneLevel;
.super Ljava/lang/Object;
.source "VipPhoneLevel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/vip/VipPhoneLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_ID:Ljava/lang/String; = "-1"

.field public static final UNKNOWN_INT:I = -0x1


# instance fields
.field public level:I

.field public levelUpdateTime:J

.field public mid:Ljava/lang/String;

.field public midUpdateTime:J

.field public phone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lmiui/vip/VipPhoneLevel$1;

    invoke-direct {v0}, Lmiui/vip/VipPhoneLevel$1;-><init>()V

    sput-object v0, Lmiui/vip/VipPhoneLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/vip/VipPhoneLevel;->midUpdateTime:J

    .line 39
    const/4 v2, 0x1

    iput v2, p0, Lmiui/vip/VipPhoneLevel;->level:I

    .line 40
    iput-wide v0, p0, Lmiui/vip/VipPhoneLevel;->levelUpdateTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget-object v0, p0, Lmiui/vip/VipPhoneLevel;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lmiui/vip/VipPhoneLevel;->mid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-wide v0, p0, Lmiui/vip/VipPhoneLevel;->midUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget v0, p0, Lmiui/vip/VipPhoneLevel;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v0, p0, Lmiui/vip/VipPhoneLevel;->levelUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    return-void
.end method
