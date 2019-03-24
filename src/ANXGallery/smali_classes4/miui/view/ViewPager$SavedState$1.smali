.class Lmiui/view/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/view/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public af(I)[Lmiui/view/ViewPager$SavedState;
    .locals 0

    .line 1069
    new-array p1, p1, [Lmiui/view/ViewPager$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1062
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager$SavedState$1;->g(Landroid/os/Parcel;)Lmiui/view/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/os/Parcel;)Lmiui/view/ViewPager$SavedState;
    .locals 1

    .line 1065
    new-instance v0, Lmiui/view/ViewPager$SavedState;

    invoke-direct {v0, p1}, Lmiui/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1062
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager$SavedState$1;->af(I)[Lmiui/view/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
