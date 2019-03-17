.class public Lcom/miui/gallery/share/PhoneShareAlbumProvider;
.super Ljava/lang/Object;
.source "PhoneShareAlbumProvider.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/share/PhoneShareAlbumProvider;


# instance fields
.field private addSharerByWhich:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->initDialogItems()V

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/share/PhoneShareAlbumProvider;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->sInstance:Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    invoke-direct {v0}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;-><init>()V

    sput-object v0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->sInstance:Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    .line 47
    :cond_0
    sget-object v0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->sInstance:Lcom/miui/gallery/share/PhoneShareAlbumProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getShareItemTexts(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 70
    const/4 v2, 0x0

    .line 87
    :cond_0
    return-object v2

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    array-length v1, v3

    .line 73
    .local v1, "itemLength":I
    new-array v2, v1, [Ljava/lang/String;

    .line 74
    .local v2, "shareItemTexts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 83
    const-string v3, "PhoneShareAlbumProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not handled operation type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_0
    const v3, 0x7f0c00c7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 80
    :pswitch_1
    const v3, 0x7f0c00c6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDialogItems()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 35
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    goto :goto_0

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private recordAddSharerCountEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "album"

    const-string v2, "add_sharer"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    return-void
.end method


# virtual methods
.method public getAddSharerDialogItemsLength()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getShareUrlIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mAlbumName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "isOnlyrUrl"    # Z

    .prologue
    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    const v7, 0x7f0c03e8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "album":Ljava/lang/String;
    const v7, 0x7f0c0494

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object p4, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "text":Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, p3

    .line 150
    .local v3, "temp":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "linkedUrl":Ljava/lang/String;
    const v7, 0x7f0c0494

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "textWithLinkedUrl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body> <font size=12>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "textForBluetooth":Ljava/lang/String;
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v7, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v7, "text/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const v7, 0x7f0c047b

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    return-object v7

    .end local v2    # "linkedUrl":Ljava/lang/String;
    .end local v3    # "temp":Ljava/lang/String;
    .end local v5    # "textForBluetooth":Ljava/lang/String;
    .end local v6    # "textWithLinkedUrl":Ljava/lang/String;
    :cond_0
    move-object v3, p4

    .line 149
    goto :goto_0
.end method

.method public shareByOther(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mAlbumName"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;

    .prologue
    .line 142
    invoke-virtual {p3}, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getShareUrlIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method public shareBySms(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const v2, 0x7f0c041f

    invoke-static {v2}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 139
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v2, "sms_body"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneShareAlbumProvider"

    const-string/jumbo v3, "sms intent not resolved"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "PhoneShareAlbumProvider"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shareOperation(Landroid/app/Activity;ILcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clickWhich"    # I
    .param p3, "result"    # Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
    .param p4, "mAlbumName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->addSharerByWhich:[I

    aget v0, v0, p2

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad category, which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_0
    invoke-virtual {p3}, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;->toMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->shareBySms(Ljava/lang/String;Landroid/app/Activity;)V

    .line 97
    const-string/jumbo v0, "sms"

    invoke-direct {p0, v0}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->recordAddSharerCountEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-virtual {p0, p1, p4, p3}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->shareByOther(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;)V

    .line 101
    const-string v0, "other"

    invoke-direct {p0, v0}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->recordAddSharerCountEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showAddSharerDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c000b

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getShareItemTexts(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 61
    invoke-virtual {v0, v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 66
    return-void
.end method

.method public showKickUserDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0277

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0276

    .line 167
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 170
    return-void
.end method
