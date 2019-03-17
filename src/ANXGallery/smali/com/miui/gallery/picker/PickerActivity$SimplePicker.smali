.class public Lcom/miui/gallery/picker/PickerActivity$SimplePicker;
.super Ljava/lang/Object;
.source "PickerActivity.java"

# interfaces
.implements Lcom/miui/gallery/picker/helper/Picker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SimplePicker"
.end annotation


# instance fields
.field private final mBaseline:I

.field private final mCapacity:I

.field private mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

.field private mMediaType:Lcom/miui/gallery/picker/helper/Picker$MediaType;

.field private mObservable:Landroid/database/DataSetObservable;

.field private mPickMode:Lcom/miui/gallery/picker/helper/Picker$Mode;

.field private mPickerActivity:Lcom/miui/gallery/picker/PickerActivity;

.field private mResultType:Lcom/miui/gallery/picker/helper/Picker$ResultType;

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/PickerActivity;IILjava/util/List;)V
    .locals 6
    .param p1, "activity"    # Lcom/miui/gallery/picker/PickerActivity;
    .param p2, "capacity"    # I
    .param p3, "baseline"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/picker/PickerActivity;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->THUMBNAIL:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 361
    if-nez p4, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    if-gez p2, :cond_1

    .line 366
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$Mode;->UNLIMITED:Lcom/miui/gallery/picker/helper/Picker$Mode;

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mPickMode:Lcom/miui/gallery/picker/helper/Picker$Mode;

    .line 367
    const p2, 0x7fffffff

    .line 375
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ResultMap size (%d) is too large this picker (%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 378
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 377
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    if-le p2, v5, :cond_2

    .line 369
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$Mode;->MULTIPLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mPickMode:Lcom/miui/gallery/picker/helper/Picker$Mode;

    goto :goto_0

    .line 371
    :cond_2
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mPickMode:Lcom/miui/gallery/picker/helper/Picker$Mode;

    .line 372
    const/4 p2, 0x1

    goto :goto_0

    .line 382
    :cond_3
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mPickerActivity:Lcom/miui/gallery/picker/PickerActivity;

    .line 383
    iput-object p4, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    .line 384
    iput p2, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mCapacity:I

    .line 385
    iput p3, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mBaseline:I

    .line 386
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mObservable:Landroid/database/DataSetObservable;

    .line 387
    return-void
.end method


# virtual methods
.method public baseline()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mBaseline:I

    return v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mPickerActivity:Lcom/miui/gallery/picker/PickerActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickerActivity;->onCancel()V

    .line 480
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mCapacity:I

    return v0
.end method

.method public clear()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 419
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public done()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mPickerActivity:Lcom/miui/gallery/picker/PickerActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickerActivity;->onDone()V

    .line 475
    return-void
.end method

.method public getImageType()Lcom/miui/gallery/picker/helper/Picker$ImageType;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    return-object v0
.end method

.method public getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mMediaType:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    return-object v0
.end method

.method public getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mPickMode:Lcom/miui/gallery/picker/helper/Picker$Mode;

    return-object v0
.end method

.method public getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResultType:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    return-object v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->count()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->capacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public pick(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 396
    .local v0, "updated":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public registerObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 406
    .local v0, "updated":Z
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 409
    :cond_0
    return v0
.end method

.method public setImageType(Lcom/miui/gallery/picker/helper/Picker$ImageType;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 460
    return-void
.end method

.method public setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/picker/helper/Picker$MediaType;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mMediaType:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    .line 450
    return-void
.end method

.method public setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/picker/helper/Picker$ResultType;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResultType:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    .line 470
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimplePicker{mResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;->mResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
