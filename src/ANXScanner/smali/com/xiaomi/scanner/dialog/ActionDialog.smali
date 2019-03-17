.class public Lcom/xiaomi/scanner/dialog/ActionDialog;
.super Landroid/app/Dialog;
.source "ActionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    const v0, 0x7f0900aa

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method private callPhone(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method private newContact()V
    .locals 4

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    const-string v2, "content://com.android.contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "contacts"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "phone"

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v2, v2, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method private newSchedule(Ljava/lang/String;)V
    .locals 8
    .param p1, "mDateString"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 186
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 190
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "beginTime"

    .line 191
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    .line 192
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private open(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, "webpage":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    :cond_1
    return-void
.end method

.method private reportCopyOrCancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 134
    :goto_0
    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->trackBCEvent(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void

    .line 118
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "business_address_action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 122
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "business_phone_action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    goto :goto_0

    .line 125
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "business_email_action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    goto :goto_0

    .line 128
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "business_date_action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    goto :goto_0

    .line 131
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "business_link_action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method private sendAction()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 178
    :goto_0
    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->trackBCEvent(Ljava/lang/String;)V

    .line 182
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void

    .line 155
    .restart local v0    # "key":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v2, v2, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/AssistUtils;->startMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    const-string v0, "business_address_acton_gps_click"

    .line 157
    goto :goto_0

    .line 160
    :sswitch_1
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/dialog/ActionDialog;->callPhone(Ljava/lang/String;)V

    .line 161
    const-string v0, "business_phone_acton_call_click"

    .line 162
    goto :goto_0

    .line 164
    :sswitch_2
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/dialog/ActionDialog;->sendEmail(Ljava/lang/CharSequence;)V

    .line 165
    const-string v0, "business_email_acton_send_click"

    .line 166
    goto :goto_0

    .line 168
    :sswitch_3
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/dialog/ActionDialog;->newSchedule(Ljava/lang/String;)V

    .line 169
    const-string v0, "business_date_acton_schedule_click"

    .line 170
    goto :goto_0

    .line 172
    :sswitch_4
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/auth/third/core/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/dialog/ActionDialog;->open(Ljava/lang/String;)V

    .line 175
    :cond_1
    const-string v0, "business_link_acton_open_click"

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method private sendEmail(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "email"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "uriText":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "sendIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u53d1Email"

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public static showOcrActionDialog(Landroid/content/Context;Lcom/xiaomi/scanner/bean/BusinessClickBean;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ocrClickBean"    # Lcom/xiaomi/scanner/bean/BusinessClickBean;

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/scanner/dialog/ActionDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "dialog":Lcom/xiaomi/scanner/dialog/ActionDialog;
    iput-object p1, v0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    .line 39
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->show()V

    .line 40
    return-void
.end method

.method private trackBCEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isOnlyBusinessCardScan()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackBCEvent(ZLjava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method protected copy()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 143
    .local v0, "cm":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v2, v2, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07003a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 145
    const-string v1, "_copy_click"

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/dialog/ActionDialog;->reportCopyOrCancel(Ljava/lang/String;)V

    .line 147
    .end local v0    # "cm":Landroid/content/ClipboardManager;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->dismiss()V

    .line 110
    return-void

    .line 96
    :pswitch_0
    const-string v0, "_cancel_click"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->reportCopyOrCancel(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->copy()V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->sendAction()V

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->newContact()V

    .line 106
    const-string v0, "business_phone_action_contact_click"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->trackBCEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f0d00c0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v5, 0x7f030031

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/ActionDialog;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 52
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x50

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 53
    sget v5, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    const v5, 0x7f0d00c3

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/ActionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v5, 0x7f0d00c2

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/ActionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v5, 0x7f0d00c1

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/ActionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "actionView":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v5, 0x7f0d00c0

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/ActionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v5, 0x7f0d00be

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/ActionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, "dataView":Landroid/widget/TextView;
    const v5, 0x7f0d00bf

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/ActionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, "extraAction":Landroid/view/View;
    iget-object v5, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget-object v5, v5, Lcom/xiaomi/scanner/bean/BusinessClickBean;->text:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v4, 0x0

    .line 66
    .local v4, "text":I
    iget-object v5, p0, Lcom/xiaomi/scanner/dialog/ActionDialog;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget v5, v5, Lcom/xiaomi/scanner/bean/BusinessClickBean;->type:I

    sparse-switch v5, :sswitch_data_0

    .line 86
    :goto_0
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 90
    .end local v4    # "text":I
    :cond_0
    return-void

    .line 69
    .restart local v4    # "text":I
    :sswitch_0
    const v4, 0x7f070060

    .line 70
    goto :goto_0

    .line 73
    :sswitch_1
    const v4, 0x7f07002b

    .line 74
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 77
    :sswitch_2
    const v4, 0x7f07009c

    .line 78
    goto :goto_0

    .line 80
    :sswitch_3
    const v4, 0x7f07007e

    .line 81
    goto :goto_0

    .line 83
    :sswitch_4
    const v4, 0x7f070086

    goto :goto_0

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
    .end sparse-switch
.end method
