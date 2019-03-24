.class Lmiui/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DatePicker;
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
            "Lmiui/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final QK:I

.field private final QL:I

.field private final QM:I

.field private final QN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 784
    new-instance v0, Lmiui/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 766
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->QK:I

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->QL:I

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->QM:I

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->QN:Z

    .line 771
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/DatePicker$1;)V
    .locals 0

    .line 741
    invoke-direct {p0, p1}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .locals 0

    .line 755
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 756
    iput p2, p0, Lmiui/widget/DatePicker$SavedState;->QK:I

    .line 757
    iput p3, p0, Lmiui/widget/DatePicker$SavedState;->QL:I

    .line 758
    iput p4, p0, Lmiui/widget/DatePicker$SavedState;->QM:I

    .line 759
    iput-boolean p5, p0, Lmiui/widget/DatePicker$SavedState;->QN:Z

    .line 760
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V
    .locals 0

    .line 741
    invoke-direct/range {p0 .. p5}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZ)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/DatePicker$SavedState;)I
    .locals 0

    .line 741
    iget p0, p0, Lmiui/widget/DatePicker$SavedState;->QK:I

    return p0
.end method

.method static synthetic b(Lmiui/widget/DatePicker$SavedState;)I
    .locals 0

    .line 741
    iget p0, p0, Lmiui/widget/DatePicker$SavedState;->QL:I

    return p0
.end method

.method static synthetic c(Lmiui/widget/DatePicker$SavedState;)I
    .locals 0

    .line 741
    iget p0, p0, Lmiui/widget/DatePicker$SavedState;->QM:I

    return p0
.end method

.method static synthetic d(Lmiui/widget/DatePicker$SavedState;)Z
    .locals 0

    .line 741
    iget-boolean p0, p0, Lmiui/widget/DatePicker$SavedState;->QN:Z

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 775
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 776
    iget p2, p0, Lmiui/widget/DatePicker$SavedState;->QK:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    iget p2, p0, Lmiui/widget/DatePicker$SavedState;->QL:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    iget p2, p0, Lmiui/widget/DatePicker$SavedState;->QM:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    iget-boolean p2, p0, Lmiui/widget/DatePicker$SavedState;->QN:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    return-void
.end method
