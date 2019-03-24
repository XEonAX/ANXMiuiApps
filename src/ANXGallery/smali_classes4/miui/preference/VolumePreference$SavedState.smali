.class Lmiui/preference/VolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/preference/VolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field EJ:Lmiui/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    new-instance v0, Lmiui/preference/VolumePreference$SavedState$1;

    invoke-direct {v0}, Lmiui/preference/VolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lmiui/preference/VolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 210
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 207
    new-instance v0, Lmiui/preference/VolumePreference$VolumeStore;

    invoke-direct {v0}, Lmiui/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lmiui/preference/VolumePreference$SavedState;->EJ:Lmiui/preference/VolumePreference$VolumeStore;

    .line 211
    iget-object v0, p0, Lmiui/preference/VolumePreference$SavedState;->EJ:Lmiui/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    .line 212
    iget-object v0, p0, Lmiui/preference/VolumePreference$SavedState;->EJ:Lmiui/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 207
    new-instance p1, Lmiui/preference/VolumePreference$VolumeStore;

    invoke-direct {p1}, Lmiui/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object p1, p0, Lmiui/preference/VolumePreference$SavedState;->EJ:Lmiui/preference/VolumePreference$VolumeStore;

    .line 228
    return-void
.end method


# virtual methods
.method cN()Lmiui/preference/VolumePreference$VolumeStore;
    .locals 1

    .line 223
    iget-object v0, p0, Lmiui/preference/VolumePreference$SavedState;->EJ:Lmiui/preference/VolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    iget-object p2, p0, Lmiui/preference/VolumePreference$SavedState;->EJ:Lmiui/preference/VolumePreference$VolumeStore;

    iget p2, p2, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lmiui/preference/VolumePreference$SavedState;->EJ:Lmiui/preference/VolumePreference$VolumeStore;

    iget p2, p2, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    return-void
.end method
