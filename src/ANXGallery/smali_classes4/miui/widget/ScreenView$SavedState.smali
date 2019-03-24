.class Lmiui/widget/ScreenView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/widget/ScreenView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ZB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2023
    new-instance v0, Lmiui/widget/ScreenView$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/ScreenView$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/ScreenView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2041
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2034
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$SavedState;->ZB:I

    .line 2042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView$SavedState;->ZB:I

    .line 2043
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/ScreenView$1;)V
    .locals 0

    .line 2021
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2037
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2034
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView$SavedState;->ZB:I

    .line 2038
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2047
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2048
    iget p2, p0, Lmiui/widget/ScreenView$SavedState;->ZB:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    return-void
.end method
