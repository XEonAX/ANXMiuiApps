.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
.super Ljava/lang/Object;
.source "TextFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextStatusData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I

.field public text:Ljava/lang/String;

.field public textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

.field public textBold:Z

.field public textShadow:Z

.field public textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field public transparentProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .local v0, "tmpTextAlignment":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->text:Ljava/lang/String;

    .line 327
    return-void

    .end local v0    # "tmpTextAlignment":I
    :cond_0
    move v1, v3

    .line 322
    goto :goto_0

    :cond_1
    move v2, v3

    .line 323
    goto :goto_1

    .line 325
    .restart local v0    # "tmpTextAlignment":I
    :cond_2
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->values()[Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 310
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 311
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    return-void

    :cond_0
    move v0, v2

    .line 310
    goto :goto_0

    :cond_1
    move v1, v2

    .line 311
    goto :goto_1

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->ordinal()I

    move-result v0

    goto :goto_2
.end method
