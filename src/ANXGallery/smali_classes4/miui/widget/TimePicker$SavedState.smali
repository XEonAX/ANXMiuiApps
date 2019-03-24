.class Lmiui/widget/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/TimePicker;
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
            "Lmiui/widget/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aaQ:I

.field private final aaR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 283
    new-instance v0, Lmiui/widget/TimePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/TimePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 262
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/TimePicker$SavedState;->aaQ:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmiui/widget/TimePicker$SavedState;->aaR:I

    .line 265
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/TimePicker$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 257
    iput p2, p0, Lmiui/widget/TimePicker$SavedState;->aaQ:I

    .line 258
    iput p3, p0, Lmiui/widget/TimePicker$SavedState;->aaR:I

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILmiui/widget/TimePicker$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .line 268
    iget v0, p0, Lmiui/widget/TimePicker$SavedState;->aaQ:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 272
    iget v0, p0, Lmiui/widget/TimePicker$SavedState;->aaR:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 278
    iget p2, p0, Lmiui/widget/TimePicker$SavedState;->aaQ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget p2, p0, Lmiui/widget/TimePicker$SavedState;->aaR:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    return-void
.end method
