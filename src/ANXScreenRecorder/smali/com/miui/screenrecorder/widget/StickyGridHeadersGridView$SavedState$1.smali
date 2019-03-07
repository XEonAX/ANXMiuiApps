.class final Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState$1;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 1346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1347
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    const-class v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V

    .line 1350
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    invoke-direct {v0, p1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcel;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1356
    new-array v0, p1, [Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState$1;->newArray(I)[Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    move-result-object v0

    return-object v0
.end method
