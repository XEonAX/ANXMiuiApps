.class Lmiui/widget/DateTimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/widget/DateTimePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ao(I)[Lmiui/widget/DateTimePicker$SavedState;
    .locals 0

    .line 464
    new-array p1, p1, [Lmiui/widget/DateTimePicker$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 458
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker$SavedState$1;->i(Landroid/os/Parcel;)Lmiui/widget/DateTimePicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public i(Landroid/os/Parcel;)Lmiui/widget/DateTimePicker$SavedState;
    .locals 1

    .line 460
    new-instance v0, Lmiui/widget/DateTimePicker$SavedState;

    invoke-direct {v0, p1}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 458
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker$SavedState$1;->ao(I)[Lmiui/widget/DateTimePicker$SavedState;

    move-result-object p1

    return-object p1
.end method
