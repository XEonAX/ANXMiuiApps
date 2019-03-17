.class public abstract Lcom/miui/gallery/picker/PickerActivity;
.super Lcom/miui/gallery/picker/PickerCompatActivity;
.source "PickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickerActivity$SimplePicker;,
        Lcom/miui/gallery/picker/PickerActivity$Decor;
    }
.end annotation


# static fields
.field protected static final PICKABLE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

.field protected mPicker:Lcom/miui/gallery/picker/helper/Picker;

.field private mPickerTitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/picker/PickerActivity;->PICKABLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;-><init>()V

    .line 345
    return-void
.end method

.method public static copyPicker(Lcom/miui/gallery/picker/helper/Picker;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "picker"    # Lcom/miui/gallery/picker/helper/Picker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/picker/helper/Picker;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    if-eqz p0, :cond_0

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lcom/miui/gallery/picker/helper/Picker;->count()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/miui/gallery/picker/helper/Picker;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v0    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v0
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 228
    const-string v5, "PickerActivity"

    const-string v6, "restore instance state for picker: "

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "com.miui.gallery.picker.PickerActivity.capacity"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 230
    .local v1, "capacity":I
    const-string v5, "com.miui.gallery.picker.PickerActivity.baseline"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "baseline":I
    const-string v5, "com.miui.gallery.picker.PickerActivity.results"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 232
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;

    invoke-direct {v5, p0, v1, v0, v3}, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;-><init>(Lcom/miui/gallery/picker/PickerActivity;IILjava/util/List;)V

    iput-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    .line 236
    const-string v5, "com.miui.gallery.picker.PickerActivity.media_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 237
    .local v2, "mediaType":I
    const-string v5, "com.miui.gallery.picker.PickerActivity.result_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 238
    .local v4, "resultType":I
    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {}, Lcom/miui/gallery/picker/helper/Picker$MediaType;->values()[Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-interface {v5, v6}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    .line 239
    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {}, Lcom/miui/gallery/picker/helper/Picker$ResultType;->values()[Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Lcom/miui/gallery/picker/helper/Picker;->setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V

    .line 240
    const-string v5, "PickerActivity"

    const-string v6, "picker[capacity:%d, size:%d] restored."

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    return-void
.end method


# virtual methods
.method public getPicker()Lcom/miui/gallery/picker/helper/Picker;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerCompatActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 188
    instance-of v0, p1, Lcom/miui/gallery/picker/PickerFragment;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Lcom/miui/gallery/picker/PickerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/picker/PickerFragment;->attach(Lcom/miui/gallery/picker/helper/Picker;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->finish()V

    .line 166
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity;->initActionBar()V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickerActivity$Decor;->applyActionBar()V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickerActivity$Decor;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mPickerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickerActivity$Decor;->setPickerTitle(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickerActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity;->onCreateDecor()Lcom/miui/gallery/picker/PickerActivity$Decor;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    .line 85
    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickerActivity$Decor;->applyTheme()V

    .line 86
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickerActivity$Decor;->applyActionBar()V

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity;->updateTitle()V

    .line 89
    :goto_1
    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity;->onCreatePicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PickerActivity"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreateDecor()Lcom/miui/gallery/picker/PickerActivity$Decor;
    .locals 1

    .prologue
    .line 161
    invoke-static {p0}, Lcom/miui/gallery/picker/PickerActivity$Decor;->create(Lcom/miui/gallery/picker/PickerActivity;)Lcom/miui/gallery/picker/PickerActivity$Decor;

    move-result-object v0

    return-object v0
.end method

.method protected onCreatePicker()Lcom/miui/gallery/picker/helper/Picker;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 102
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "type":Ljava/lang/String;
    const-string v6, "pick-upper-bound"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    const-string v6, "pick-upper-bound"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, "capacity":I
    const-string v6, "PickerActivity"

    const-string v7, "initial pick bound: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :goto_0
    const-string v6, "pick-lower-bound"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "baseline":I
    if-ge v0, v11, :cond_0

    const/4 v0, 0x1

    .line 118
    :cond_0
    if-eq v1, v10, :cond_1

    if-le v0, v1, :cond_2

    .line 119
    :cond_1
    const/4 v0, 0x1

    .line 122
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/miui/gallery/picker/PickerActivity$SimplePicker;-><init>(Lcom/miui/gallery/picker/PickerActivity;IILjava/util/List;)V

    .line 126
    .local v3, "picker":Lcom/miui/gallery/picker/helper/Picker;
    const-string v6, "image/*"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 127
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    .line 138
    :goto_1
    const-string v6, "pick-need-id"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 139
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ID:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V

    .line 150
    :goto_2
    const-string v6, "pick-need-origin"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 151
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setImageType(Lcom/miui/gallery/picker/helper/Picker$ImageType;)V

    .line 156
    :cond_3
    :goto_3
    const-string v6, "PickerActivity"

    const-string v7, "creating picker, capacity is %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-object v3

    .line 109
    .end local v0    # "baseline":I
    .end local v1    # "capacity":I
    .end local v3    # "picker":Lcom/miui/gallery/picker/helper/Picker;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v6, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 110
    const-string v6, "PickerActivity"

    const-string/jumbo v7, "standard pick multiple"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v1, -0x1

    .restart local v1    # "capacity":I
    goto :goto_0

    .line 113
    .end local v1    # "capacity":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "capacity":I
    goto :goto_0

    .line 128
    .restart local v0    # "baseline":I
    .restart local v3    # "picker":Lcom/miui/gallery/picker/helper/Picker;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v6, "video/*"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 129
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    goto :goto_1

    .line 130
    :cond_7
    const-string/jumbo v6, "vnd.android.cursor.dir/image"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 131
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    goto :goto_1

    .line 132
    :cond_8
    const-string/jumbo v6, "vnd.android.cursor.dir/video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 133
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    goto :goto_1

    .line 135
    :cond_9
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setMediaType(Lcom/miui/gallery/picker/helper/Picker$MediaType;)V

    goto :goto_1

    .line 140
    :cond_a
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/miui/gallery/provider/GalleryOpenProvider;->needReturnContentUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 141
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$ResultType;->OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V

    goto :goto_2

    .line 143
    :cond_b
    const-string/jumbo v6, "vnd.android.cursor.dir/image"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "vnd.android.cursor.dir/video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 144
    :cond_c
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_MEDIA:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V

    goto/16 :goto_2

    .line 146
    :cond_d
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_GENERAL:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setResultType(Lcom/miui/gallery/picker/helper/Picker$ResultType;)V

    goto/16 :goto_2

    .line 152
    :cond_e
    const-string v6, "pick-need-origin-download-info"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    invoke-interface {v3, v6}, Lcom/miui/gallery/picker/helper/Picker;->setImageType(Lcom/miui/gallery/picker/helper/Picker$ImageType;)V

    goto/16 :goto_3
.end method

.method protected abstract onDone()V
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    const-string v0, "com.miui.gallery.picker.PickerActivity.results"

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickerActivity;->copyPicker(Lcom/miui/gallery/picker/helper/Picker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 221
    const-string v1, "com.miui.gallery.picker.PickerActivity.capacity"

    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$Mode;->UNLIMITED:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 222
    const-string v0, "com.miui.gallery.picker.PickerActivity.baseline"

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 223
    const-string v0, "com.miui.gallery.picker.PickerActivity.media_type"

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v0, "com.miui.gallery.picker.PickerActivity.result_type"

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v0

    goto :goto_0
.end method

.method public final setPickerTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity;->mPickerTitle:Ljava/lang/CharSequence;

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/PickerActivity$Decor;->setPickerTitle(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity;->mTitle:Ljava/lang/CharSequence;

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity;->mDecor:Lcom/miui/gallery/picker/PickerActivity$Decor;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickerActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickerActivity$Decor;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method protected final updateTitle()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->count()I

    move-result v0

    .line 195
    .local v0, "count":I
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v1

    .line 196
    .local v1, "mode":Lcom/miui/gallery/picker/helper/Picker$Mode;
    if-lez v0, :cond_1

    .line 198
    sget-object v3, Lcom/miui/gallery/picker/helper/Picker$Mode;->MULTIPLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v1, v3, :cond_0

    .line 199
    const v3, 0x7f0c03cc

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/picker/PickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "pickerTitle":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/gallery/picker/PickerActivity;->setPickerTitle(Ljava/lang/CharSequence;)V

    .line 215
    .end local v2    # "pickerTitle":Ljava/lang/String;
    :goto_1
    return-void

    .line 201
    :cond_0
    const v3, 0x7f0c03cb

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/picker/PickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pickerTitle":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v2    # "pickerTitle":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/miui/gallery/picker/helper/Picker$Mode;->MULTIPLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v1, v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 206
    const v3, 0x7f0c03ca

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/picker/PickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/picker/PickerActivity;->setPickerTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    :cond_2
    const v3, 0x7f0c03cd

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/picker/PickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/picker/PickerActivity;->setPickerTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    :cond_3
    sget-object v3, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v1, v3, :cond_4

    .line 211
    const v3, 0x7f0c03ce

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/picker/PickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/picker/PickerActivity;->setPickerTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 213
    :cond_4
    const v3, 0x7f0c03cf

    invoke-virtual {p0, v3}, Lcom/miui/gallery/picker/PickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/picker/PickerActivity;->setPickerTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
