.class final Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData$1;
.super Ljava/lang/Object;
.source "TextFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
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
        "Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 439
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 444
    new-array v0, p1, [Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData$1;->newArray(I)[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    move-result-object v0

    return-object v0
.end method
