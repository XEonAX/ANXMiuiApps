.class public Lcom/miui/gallery/util/DocumentProviderUtils;
.super Lcom/miui/gallery/util/BaseDocumentProviderUtils;
.source "DocumentProviderUtils.java"


# direct methods
.method private static createAccessIntent(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/android/internal/storage/StorageManager;->getInstance()Lcom/android/internal/storage/StorageManager;

    move-result-object v5

    .line 189
    .local v5, "storageManager":Lcom/android/internal/storage/StorageManager;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0, v6}, Lcom/android/internal/storage/StorageManager;->getStorageInfo(Landroid/content/Context;Ljava/io/File;)Lcom/android/internal/storage/StorageInfo;

    move-result-object v4

    .line 190
    .local v4, "storageInfo":Lcom/android/internal/storage/StorageInfo;
    if-nez v4, :cond_0

    .line 191
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->firstEntrancyPermFailed(Landroid/app/Activity;)V

    .line 213
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {v4, p0}, Lcom/android/internal/storage/StorageInfo;->createAccessIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 195
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 196
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->firstEntrancyPermFailed(Landroid/app/Activity;)V

    goto :goto_0

    .line 199
    :cond_1
    new-instance v3, Lcom/miui/gallery/util/DocumentProviderUtils$2;

    invoke-direct {v3, p0, v2, p2}, Lcom/miui/gallery/util/DocumentProviderUtils$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 205
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v6}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const/4 v7, 0x0

    .line 206
    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v6

    const v7, 0x7f0c01d8

    .line 207
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v6

    const v7, 0x7f0c01d7

    .line 208
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v6

    const v7, 0x7f0c01d6

    .line 209
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 211
    .local v1, "builder":Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 212
    .local v0, "alertDialogFragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DocumentProviderUtils"

    invoke-virtual {v0, v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static firstEntrancyPermFailed(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    invoke-static {}, Lcom/miui/gallery/util/DocumentProviderUtils;->increaseAccessIntentCount()V

    .line 120
    new-instance v2, Lcom/miui/gallery/util/DocumentProviderUtils$1;

    invoke-direct {v2}, Lcom/miui/gallery/util/DocumentProviderUtils$1;-><init>()V

    .line 126
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const/4 v4, 0x0

    .line 127
    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 132
    .local v1, "builder":Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 133
    .local v0, "alertDialogFragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DocumentProviderUtils"

    invoke-virtual {v0, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static handleRequestPermissionResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 57
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/16 v0, 0x31

    if-ne p1, v0, :cond_3

    .line 62
    invoke-static {v2}, Lcom/miui/gallery/preference/DocumentProviderPreference;->setFirstEntrance(Z)V

    .line 64
    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->isUriExternalSDCardRoot(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 66
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_first_entrance"

    .line 67
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->firstEntrancyPermFailed(Landroid/app/Activity;)V

    .line 70
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_first_entrance"

    .line 71
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_5

    .line 78
    if-ne p2, v1, :cond_4

    .line 79
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 80
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_4
    invoke-static {}, Lcom/miui/gallery/util/DocumentProviderUtils;->increaseAccessIntentCount()V

    .line 84
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->showOperationFailedDialog(Landroid/app/Activity;)V

    .line 85
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 86
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_5
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 92
    if-ne p2, v1, :cond_6

    .line 93
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->isUriExternalSDCardRoot(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 95
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 96
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_6
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->showOperationFailedDialog(Landroid/app/Activity;)V

    .line 101
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 102
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/miui/gallery/util/DocumentProviderUtils;->persistDocumentProviderUri(Landroid/content/Context;Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method private static increaseAccessIntentCount()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/miui/gallery/preference/DocumentProviderPreference;->getOpenExternalDocumentCount()I

    move-result v0

    .line 139
    .local v0, "oldNum":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/miui/gallery/preference/DocumentProviderPreference;->setOpenExternalDocumentCount(I)V

    .line 140
    return-void
.end method

.method private static isUriExternalSDCardRoot(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "chosenUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 143
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v4

    .line 146
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "sdCardPath":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 148
    .local v0, "chosenFile":Landroid/support/v4/provider/DocumentFile;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".miuigallery"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "displayName":Ljava/lang/String;
    const-string v5, "any/any"

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    .line 150
    .local v3, "testFile":Landroid/support/v4/provider/DocumentFile;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    .line 152
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static persistDocumentProviderUri(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 164
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/preference/BaseGalleryPreferences$BaseDocumentProvider;->setExternalSDCardUri(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DocumentProviderUtils"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static showOperationFailedDialog(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    new-instance v2, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 177
    .local v1, "builder":Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 178
    .local v0, "alertDialogFragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DocumentProviderUtils"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private static startDocumentTreeIntent(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/miui/gallery/ui/DocumentsUIFragment;->newInstance(II)Lcom/miui/gallery/ui/DocumentsUIFragment;

    move-result-object v0

    .line 220
    .local v0, "docUI":Lcom/miui/gallery/ui/DocumentsUIFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DocumentsUIFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/DocumentsUIFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "filePath":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$BaseDocumentProvider;->getExternalSDCardUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 49
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/gallery/preference/DocumentProviderPreference;->setOpenExternalDocumentCount(I)V

    .line 52
    :cond_2
    const/16 v1, 0x2f

    const/16 v2, 0x30

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gallery/util/DocumentProviderUtils;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static startFirstEntrancyPermissionActivityForResult(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/16 v1, 0x31

    .line 29
    if-nez p0, :cond_0

    .line 30
    const-string v0, "DocumentProviderUtils"

    const-string/jumbo v1, "startExtSDCardPermissionActivityForResult activity null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/miui/gallery/util/DocumentProviderUtils;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private static startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "requestCodeForAccessIntent"    # I
    .param p3, "requestCodeForDocumentTree"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/miui/gallery/preference/DocumentProviderPreference;->getOpenExternalDocumentCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 110
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/DocumentProviderUtils;->createAccessIntent(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->startDocumentTreeIntent(Landroid/app/Activity;I)V

    goto :goto_0
.end method
