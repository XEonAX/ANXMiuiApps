.class public Lcom/miui/gallery/picker/PickPeopleActivity;
.super Lcom/miui/gallery/picker/PickerActivity;
.source "PickPeopleActivity.java"


# instance fields
.field private mFragment:Lcom/miui/gallery/picker/PickPeoplePageFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected done(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "internal_key_updated_selection"

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeopleActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/picker/PickPeopleActivity;->copyPicker(Lcom/miui/gallery/picker/helper/Picker;)Ljava/util/ArrayList;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/picker/PickPeopleActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeopleActivity;->finish()V

    .line 77
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/picker/PickerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    if-eqz p2, :cond_8

    .line 83
    const-string v4, "internal_key_updated_selection"

    .line 84
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, "fromAlbum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 116
    .end local v0    # "fromAlbum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v0    # "fromAlbum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "sha1":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 93
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v1}, Lcom/miui/gallery/picker/helper/Picker;->remove(Ljava/lang/String;)Z

    goto :goto_2

    .line 103
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .restart local v3    # "sha1":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v3}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 105
    iget-object v5, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v3}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    goto :goto_3

    .line 109
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-eq v4, v5, :cond_7

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 110
    :cond_7
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->done()V

    goto :goto_0

    .line 113
    .end local v0    # "fromAlbum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->cancel()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/picker/PickPeopleActivity;->done(I)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v2, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const v2, 0x7f040109

    invoke-virtual {p0, v2}, Lcom/miui/gallery/picker/PickPeopleActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pick_people"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    .local v0, "isOnlyPickPeople":Z
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f120214

    .line 31
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/picker/PickPeoplePageFragment;

    iput-object v2, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mFragment:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    .line 32
    iget-object v2, p0, Lcom/miui/gallery/picker/PickPeopleActivity;->mFragment:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->setIsPickPeople(Z)V

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pick_people_candidate_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0c00dd

    invoke-virtual {p0, v2}, Lcom/miui/gallery/picker/PickPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/gallery/picker/PickPeopleActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreatePicker()Lcom/miui/gallery/picker/helper/Picker;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 44
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "pick-upper-bound"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "capacity":I
    const-string v7, "pick-lower-bound"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "baseline":I
    invoke-static {}, Lcom/miui/gallery/picker/helper/Picker$MediaType;->values()[Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v7

    const-string v8, "picker_media_type"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    aget-object v3, v7, v8

    .line 47
    .local v3, "mediaType":Lcom/miui/gallery/picker/helper/Picker$MediaType;
    const-string v7, "picker_result_set"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 50
    .local v5, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "pick_people"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .restart local v5    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/miui/gallery/picker/helper/Picker$ResultType;->values()[Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v7

    const-string v8, "picker_result_type"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    aget-object v6, v7, v8

    .line 55
    .local v6, "resultType":Lcom/miui/gallery/picker/helper/Picker$ResultType;
    new-instance v4, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;

    invoke-direct {v4, p0, v1, v0, v5}, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;-><init>(Lcom/miui/gallery/picker/PickerActivity;IILjava/util/List;)V

    .line 56
    .local v4, "picker":Lcom/miui/gallery/picker/helper/Picker;
    invoke-interface {v4, v3}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    .line 57
    invoke-interface {v4, v6}, Lcom/miui/gallery/picker/helper/Picker;->setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V

    .line 58
    return-object v4
.end method

.method protected onDone()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/picker/PickPeopleActivity;->done(I)V

    .line 69
    return-void
.end method
