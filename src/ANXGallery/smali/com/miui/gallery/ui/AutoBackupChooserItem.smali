.class public Lcom/miui/gallery/ui/AutoBackupChooserItem;
.super Landroid/widget/RelativeLayout;
.source "AutoBackupChooserItem.java"


# instance fields
.field private mAlbumCover:Landroid/widget/ImageView;

.field private mAlbumName:Landroid/widget/TextView;

.field private mAlbumPhotoCountAndSize:Landroid/widget/TextView;

.field private mCheckBox:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bindCheckBox(Landroid/widget/CompoundButton$OnCheckedChangeListener;ZZ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p2, "enabled"    # Z
    .param p3, "checked"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mCheckBox:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mCheckBox:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mCheckBox:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 57
    return-void
.end method

.method public bindCommonInfo(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "albumName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "size"    # J

    .prologue
    .line 42
    iget-object v1, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0009

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p3, p4}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 44
    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "countSizeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mAlbumPhotoCountAndSize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 50
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v3, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mAlbumCover:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v5, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 51
    return-void
.end method

.method public getCheckBoxCheckedState()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mCheckBox:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f1200a6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mAlbumName:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f1200c1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mAlbumPhotoCountAndSize:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f1200a8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mAlbumCover:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f1200c0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mCheckBox:Lmiui/widget/SlidingButton;

    .line 39
    return-void
.end method

.method public reverseCheckBoxCheckedState()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mCheckBox:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/gallery/ui/AutoBackupChooserItem;->mCheckBox:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
