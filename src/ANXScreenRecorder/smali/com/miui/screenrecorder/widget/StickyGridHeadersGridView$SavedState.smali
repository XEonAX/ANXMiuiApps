.class Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field areHeadersSticky:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1343
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState$1;

    invoke-direct {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState$1;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1370
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1371
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 1372
    return-void

    .line 1371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 1376
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1377
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 1378
    return-void

    .line 1377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;

    .prologue
    .line 1342
    invoke-direct {p0, p1, p2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1363
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1364
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StickyGridHeadersGridView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1383
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " areHeadersSticky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1389
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1390
    iget-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1391
    return-void

    .line 1390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
