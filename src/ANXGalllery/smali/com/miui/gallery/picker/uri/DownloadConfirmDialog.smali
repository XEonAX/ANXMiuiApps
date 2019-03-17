.class public Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "DownloadConfirmDialog.java"


# instance fields
.field private mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "download_file_count"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 35
    .local v2, "download":I
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "local_file_count"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 36
    .local v3, "local":I
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "download_file_size"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-double v8, v7

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 37
    .local v6, "size":I
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "retry_mode"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 43
    .local v5, "retry":Z
    if-eqz v5, :cond_3

    .line 44
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 45
    if-eqz v6, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0034

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c016d

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "confirm":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c03be

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cancel":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c04f5

    .line 80
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 81
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    invoke-virtual {v7, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    invoke-virtual {v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 84
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 85
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 48
    .end local v0    # "cancel":Ljava/lang/String;
    .end local v1    # "confirm":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0033

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0032

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0031

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 59
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 60
    if-nez v3, :cond_5

    .line 61
    if-eqz v6, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e002f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .restart local v4    # "msg":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c03c1

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "confirm":Ljava/lang/String;
    goto/16 :goto_1

    .line 64
    .end local v1    # "confirm":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e002d

    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 67
    .end local v4    # "msg":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_6

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c03c7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 70
    .end local v4    # "msg":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c03c4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 74
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c03c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_2
.end method

.method public setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 30
    return-void
.end method

.method public setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 26
    return-void
.end method
