.class Lcom/miui/internal/widget/ActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/internal/widget/ActionBarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1433
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView$SavedState$1;->d(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarView$SavedState;
    .locals 2

    .line 1435
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;Lcom/miui/internal/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1433
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView$SavedState$1;->r(I)[Lcom/miui/internal/widget/ActionBarView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public r(I)[Lcom/miui/internal/widget/ActionBarView$SavedState;
    .locals 0

    .line 1439
    new-array p1, p1, [Lcom/miui/internal/widget/ActionBarView$SavedState;

    return-object p1
.end method
