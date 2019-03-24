.class Lmiui/widget/ScreenView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/widget/ScreenView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aJ(I)[Lmiui/widget/ScreenView$SavedState;
    .locals 0

    .line 2030
    new-array p1, p1, [Lmiui/widget/ScreenView$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2024
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView$SavedState$1;->k(Landroid/os/Parcel;)Lmiui/widget/ScreenView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public k(Landroid/os/Parcel;)Lmiui/widget/ScreenView$SavedState;
    .locals 2

    .line 2026
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;Lmiui/widget/ScreenView$1;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2024
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView$SavedState$1;->aJ(I)[Lmiui/widget/ScreenView$SavedState;

    move-result-object p1

    return-object p1
.end method
