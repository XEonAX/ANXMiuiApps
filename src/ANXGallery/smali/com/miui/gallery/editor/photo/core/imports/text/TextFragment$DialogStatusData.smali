.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
.super Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
.source "TextFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogStatusData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isReverseColor:Z

.field public itemDegree:F

.field public itemPositionX:F

.field public itemPositionY:F

.field public itemScale:F

.field public textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 436
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;-><init>()V

    .line 425
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;-><init>()V

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->isReverseColor:Z

    .line 433
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readArray(Landroid/os/Parcel;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .line 434
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method configSelfByInit(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V
    .locals 5
    .param p1, "baseDialogModel"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 352
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-boolean v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->isCorner:Z

    if-eqz v0, :cond_0

    .line 354
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    .line 355
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 356
    iput-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    .line 367
    :goto_0
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->transparentProgress:F

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 369
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textBold:Z

    .line 370
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    .line 371
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    .line 372
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    .line 373
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    .line 374
    return-void

    .line 358
    :cond_0
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    .line 359
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->CENTER:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 360
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    goto :goto_0

    .line 363
    :cond_1
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    .line 364
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 365
    iput-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method setEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 377
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    .line 378
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 379
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->transparentProgress:F

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 381
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textBold:Z

    .line 382
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    .line 383
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    .line 384
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    .line 385
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    .line 386
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    .line 387
    new-array v0, v2, [Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .line 388
    return-void
.end method

.method watermarkInitSelf(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;)V
    .locals 4
    .param p1, "watermarkInfo"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    .prologue
    .line 391
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->textPieceList:Ljava/util/List;

    if-nez v3, :cond_2

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->setEmpty()V

    .line 407
    :cond_1
    return-void

    .line 394
    :cond_2
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->textPieceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 396
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;-><init>()V

    .line 397
    .local v2, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->textPieceList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    .line 398
    .local v1, "textPieceInfo":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;
    iget-boolean v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->isBold:Z

    iput-boolean v3, v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    .line 399
    const/4 v3, -0x1

    iput v3, v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 400
    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v3, v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 401
    const/4 v3, 0x0

    iput v3, v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    .line 402
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 403
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    .line 404
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    aput-object v2, v3, v0

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 416
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 417
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 418
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 419
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 420
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->isReverseColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 421
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    const-class v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    invoke-static {p1, p2, v0, v1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;Ljava/lang/Class;)V

    .line 422
    return-void

    .line 420
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
