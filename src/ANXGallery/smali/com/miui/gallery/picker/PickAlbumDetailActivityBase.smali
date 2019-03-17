.class public Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;
.super Lcom/miui/gallery/picker/PickerActivity;
.source "PickAlbumDetailActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;
    }
.end annotation


# instance fields
.field protected mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

.field protected mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerActivity;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->setResultCode(I)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->done()V

    .line 65
    return-void
.end method

.method protected onCreateDecor()Lcom/miui/gallery/picker/PickerActivity$Decor;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v0, v1, :cond_0

    .line 46
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onCreateDecor()Lcom/miui/gallery/picker/PickerActivity$Decor;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;)V

    goto :goto_0
.end method

.method protected onCreatePicker()Lcom/miui/gallery/picker/helper/Picker;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 32
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "pick-upper-bound"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, "capacity":I
    const-string v7, "pick-lower-bound"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "baseline":I
    invoke-static {}, Lcom/miui/gallery/picker/helper/Picker$MediaType;->values()[Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v7

    const-string v8, "picker_media_type"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    aget-object v3, v7, v8

    .line 35
    .local v3, "mediaType":Lcom/miui/gallery/picker/helper/Picker$MediaType;
    const-string v7, "picker_result_set"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 36
    .local v5, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/gallery/picker/helper/Picker$ResultType;->values()[Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v7

    const-string v8, "picker_result_type"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    aget-object v6, v7, v8

    .line 37
    .local v6, "resultType":Lcom/miui/gallery/picker/helper/Picker$ResultType;
    new-instance v4, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;

    invoke-direct {v4, p0, v1, v0, v5}, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;-><init>(Lcom/miui/gallery/picker/PickerActivity;IILjava/util/List;)V

    .line 38
    .local v4, "picker":Lcom/miui/gallery/picker/helper/Picker;
    invoke-interface {v4, v3}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    .line 39
    invoke-interface {v4, v6}, Lcom/miui/gallery/picker/helper/Picker;->setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V

    .line 40
    return-object v4
.end method

.method protected onDone()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "internal_key_updated_selection"

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->copyPicker(Lcom/miui/gallery/picker/helper/Picker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
    iget v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->mResultCode:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->finish()V

    .line 59
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->mResultCode:I

    .line 69
    return-void
.end method
