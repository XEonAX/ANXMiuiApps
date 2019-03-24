.class Lcom/miui/internal/widget/ActionBarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
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
            "Lcom/miui/internal/widget/ActionBarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field qJ:Z

.field sM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1432
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$SavedState$1;

    invoke-direct {v0}, Lcom/miui/internal/widget/ActionBarView$SavedState$1;-><init>()V

    sput-object v0, Lcom/miui/internal/widget/ActionBarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1420
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView$SavedState;->sM:I

    .line 1422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView$SavedState;->qJ:Z

    .line 1423
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/internal/widget/ActionBarView$1;)V
    .locals 0

    .line 1410
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1416
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1417
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1427
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1428
    iget p2, p0, Lcom/miui/internal/widget/ActionBarView$SavedState;->sM:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    iget-boolean p2, p0, Lcom/miui/internal/widget/ActionBarView$SavedState;->qJ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    return-void
.end method
