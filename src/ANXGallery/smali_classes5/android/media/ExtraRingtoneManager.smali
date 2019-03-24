.class public Landroid/media/ExtraRingtoneManager;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExtraRingtoneManager$SoundItem;
    }
.end annotation


# static fields
.field public static final ACTION_MIUI_RINGTONE_PICKER:Ljava/lang/String; = "miui.intent.action.RINGTONE_PICKER"

.field private static final ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

.field public static final EXTRA_RINGTONE_URI_LIST:Ljava/lang/String; = "miui.intent.extra.ringtone.EXTRA_RINGTONE_URI_LIST"

.field private static final NOTIFICATION_SOUND_TYPE:[I

.field private static final OLD_DEF_NOTIFICATION_SOUND:Ljava/lang/String; = "NotificationXylophone.ogg"

.field private static final TAG:Ljava/lang/String; = "ExtraRingtoneManager"

.field private static final TARGET_USER:Ljava/lang/String; = "root"

.field public static final TYPE_CALENDAR:I = 0x1000

.field public static final TYPE_MUSIC:I = 0x20

.field public static final TYPE_RINGTONE_SLOT_1:I = 0x40

.field public static final TYPE_RINGTONE_SLOT_2:I = 0x80

.field public static final TYPE_SMS_DELIVERED_SLOT_1:I = 0x100

.field public static final TYPE_SMS_DELIVERED_SLOT_2:I = 0x200

.field public static final TYPE_SMS_DELIVERED_SOUND:I = 0x8

.field public static final TYPE_SMS_RECEIVED_SLOT_1:I = 0x400

.field public static final TYPE_SMS_RECEIVED_SLOT_2:I = 0x800

.field public static final TYPE_SMS_RECEIVED_SOUND:I = 0x10

.field private static final UPDATE:Ljava/lang/String; = "_update"

.field private static final sNotificationUpdateRecord:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sRingtoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/ExtraRingtoneManager$SoundItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    .line 74
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/media/ExtraRingtoneManager;->NOTIFICATION_SOUND_TYPE:[I

    .line 81
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/media/ExtraRingtoneManager;->sNotificationUpdateRecord:Landroid/util/SparseArray;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    .line 88
    const-string v1, "ringtone.mp3"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    const-string v3, "ringtone"

    sget v4, Lmiui/system/R$string;->def_ringtone:I

    const/4 v5, 0x1

    invoke-static {v5, v1, v2, v3, v4}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 90
    const-string v1, "notification.mp3"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v3, "notification_sound"

    sget v4, Lmiui/system/R$string;->def_notification_sound:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 92
    const-string v0, "alarm.mp3"

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    const-string v2, "alarm_alert"

    sget v3, Lmiui/system/R$string;->def_alarm_alert:I

    const/4 v4, 0x4

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 94
    const-string v0, "calendar.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    const-string v2, "calendar_alert"

    sget v3, Lmiui/system/R$string;->def_notification_sound:I

    const/16 v4, 0x1000

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 96
    const-string v0, "sms_delivered_sound.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    const-string v2, "sms_delivered_sound"

    sget v3, Lmiui/system/R$string;->def_sms_delivered_sound:I

    const/16 v4, 0x8

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 98
    const-string v0, "sms_received_sound.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    const-string v2, "sms_received_sound"

    sget v3, Lmiui/system/R$string;->def_sms_received_sound:I

    const/16 v4, 0x10

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 101
    const-string v0, "ringtone_slot_1.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    const-string v2, "ringtone_sound_slot_1"

    sget v3, Lmiui/system/R$string;->def_ringtone_slot_1:I

    const/16 v4, 0x40

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 103
    const-string v0, "ringtone_slot_2.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    const-string v2, "ringtone_sound_slot_2"

    sget v3, Lmiui/system/R$string;->def_ringtone_slot_2:I

    const/16 v4, 0x80

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 105
    const-string v0, "sms_received_slot_1.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    const-string v2, "sms_received_sound_slot_1"

    sget v3, Lmiui/system/R$string;->def_sms_received_sound_slot_1:I

    const/16 v4, 0x400

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 107
    const-string v0, "sms_received_slot_2.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    const-string v2, "sms_received_sound_slot_2"

    sget v3, Lmiui/system/R$string;->def_sms_received_sound_slot_2:I

    const/16 v4, 0x800

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 109
    const-string v0, "sms_delivered_slot_1.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    const-string v2, "sms_delivered_sound_slot_1"

    sget v3, Lmiui/system/R$string;->def_sms_delivered_sound_slot_1:I

    const/16 v4, 0x100

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 111
    const-string v0, "sms_delivered_slot_2.mp3"

    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    const-string v2, "sms_delivered_sound_slot_2"

    sget v3, Lmiui/system/R$string;->def_sms_delivered_sound_slot_2:I

    const/16 v4, 0x200

    invoke-static {v4, v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 113
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1000
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method private static addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultUri"    # Landroid/net/Uri;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "id"    # I

    .line 426
    sget-object v0, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    .local v0, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/media/ExtraRingtoneManager$SoundItem;

    move-object v1, v7

    move v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/ExtraRingtoneManager$SoundItem;-><init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 428
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method private static copySound(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 368
    invoke-static {p2}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "internalPath":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    sget-object v1, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "dir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->mkdirs(Ljava/lang/String;)Z

    .line 375
    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .line 378
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 382
    nop

    .line 383
    invoke-static {p1, v0}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 384
    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .end local v1    # "dir":Ljava/lang/String;
    goto :goto_1

    .line 379
    .restart local v1    # "dir":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    return-void

    .line 370
    .end local v1    # "dir":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 386
    :goto_1
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 282
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->isValidType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 283
    const-string v0, "ExtraRingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActualDefaultRingtoneUri type is invalid, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-object v1

    .line 286
    :cond_0
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 287
    .local v0, "defaultSettingUri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 288
    return-object v0

    .line 290
    :cond_1
    const/4 v2, 0x0

    .line 291
    .local v2, "isCycle":Z
    const-string v3, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 292
    invoke-static {v0}, Landroid/media/ExtraRingtoneManager;->isSystemSettingsUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    invoke-static {v0}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v3

    .line 294
    .local v3, "directType":I
    invoke-static {v3}, Landroid/media/ExtraRingtoneManager;->isValidType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    return-object v1

    .line 297
    :cond_2
    invoke-static {p0, v3}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 298
    .local v4, "directUri":Landroid/net/Uri;
    if-nez v4, :cond_3

    .line 299
    return-object v1

    .line 300
    :cond_3
    const-string v5, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 301
    invoke-static {v4}, Landroid/media/ExtraRingtoneManager;->isSystemSettingsUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 302
    const/4 v2, 0x1

    goto :goto_0

    .line 304
    :cond_4
    return-object v4

    .line 307
    :cond_5
    move-object v0, v4

    .line 308
    move p1, v3

    .line 310
    .end local v3    # "directType":I
    .end local v4    # "directUri":Landroid/net/Uri;
    :goto_0
    goto :goto_1

    .line 311
    :cond_6
    return-object v0

    .line 314
    :cond_7
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v3, "effectPathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_9

    .line 316
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "backupPath":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-le v5, v6, :cond_8

    .line 319
    const-string v5, "/data/system/theme_magic"

    const-string v6, "/data/system"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v4    # "backupPath":Ljava/lang/String;
    :cond_9
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getBuildInRingtonePathRes(I)I

    move-result v4

    invoke-static {p0, v4}, Landroid/media/ExtraRingtoneManager;->getBuildInRingtonePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 325
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 328
    .end local v5    # "path":Ljava/lang/String;
    :cond_a
    goto :goto_2

    .line 329
    :cond_b
    return-object v1
.end method

.method private static getAndUpdateUserChangeRecord(Landroid/content/Context;ILjava/lang/String;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .line 505
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sNotificationUpdateRecord:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 506
    .local v0, "record":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 509
    sget-object v1, Landroid/media/ExtraRingtoneManager;->sNotificationUpdateRecord:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method private static getBuildInRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 456
    if-lez p1, :cond_0

    .line 457
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraRingtoneManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 461
    :cond_0
    nop

    .line 462
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBuildInRingtonePathRes(I)I
    .locals 3
    .param p0, "type"    # I

    .line 417
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 418
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_0

    .line 419
    iget v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->buildInPathRes:I

    return v0

    .line 421
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_0
    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getDefaultNotificationSound(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmiui/system/R$string;->def_notification_sound:I

    invoke-static {p0, v1}, Landroid/media/ExtraRingtoneManager;->getBuildInRingtonePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultRingtoneUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "type"    # I

    .line 398
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 399
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_0

    .line 400
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mDefaultRingtoneUri:Landroid/net/Uri;

    return-object v0

    .line 402
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_0
    goto :goto_0

    .line 403
    :cond_1
    const-string v0, "ExtraRingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultRingtoneUri type is invalid, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultSoundActualUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 272
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 274
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 275
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 277
    :cond_1
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSoundInternalUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "type"    # I

    .line 238
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 239
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_0

    .line 240
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mActualDefaultRingtoneUri:Landroid/net/Uri;

    return-object v0

    .line 242
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_0
    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultSoundName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 336
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 337
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 259
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public static getDefaultSoundType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "defaultSoundUri"    # Landroid/net/Uri;

    .line 131
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 132
    return v0

    .line 133
    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const/4 v0, 0x2

    return v0

    .line 137
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    const/4 v0, 0x4

    return v0

    .line 139
    :cond_3
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    const/16 v0, 0x1000

    return v0

    .line 141
    :cond_4
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    const/16 v0, 0x40

    return v0

    .line 143
    :cond_5
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    const/16 v0, 0x80

    return v0

    .line 145
    :cond_6
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    const/16 v0, 0x10

    return v0

    .line 147
    :cond_7
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 148
    const/16 v0, 0x400

    return v0

    .line 149
    :cond_8
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 150
    const/16 v0, 0x800

    return v0

    .line 151
    :cond_9
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 152
    const/16 v0, 0x8

    return v0

    .line 153
    :cond_a
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 154
    const/16 v0, 0x100

    return v0

    .line 155
    :cond_b
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 156
    const/16 v0, 0x200

    return v0

    .line 158
    :cond_c
    return v0
.end method

.method public static getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 250
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .line 389
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 390
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 391
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    return-object v0

    .line 393
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_0
    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "soundUri"    # Landroid/net/Uri;
    .param p1, "ringtoneType"    # I

    .line 351
    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 353
    .local v0, "actualSoundUri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    move-object p0, v0

    .line 357
    .end local v0    # "actualSoundUri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static isExtraCases(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "soundUri"    # Landroid/net/Uri;

    .line 344
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSystemSettingsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 466
    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "settings"

    .line 467
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0
.end method

.method private static isValidType(I)Z
    .locals 3
    .param p0, "type"    # I

    .line 408
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 409
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_0

    .line 410
    const/4 v0, 0x1

    return v0

    .line 412
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_0
    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static recordNotificationSoundChange(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 495
    .local v0, "updateTime":J
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sNotificationUpdateRecord:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 497
    return-void
.end method

.method public static resolveRingtonePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 197
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 210
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 211
    .local v2, "mediaProvider":Landroid/content/ContentResolver;
    const-string v3, "_data"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 214
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 220
    .end local v2    # "mediaProvider":Landroid/content/ContentResolver;
    :cond_0
    if-eqz v1, :cond_1

    .line 221
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    :goto_1
    return-object v0

    .line 220
    :goto_2
    if-eqz v1, :cond_2

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 172
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {p2}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 177
    :cond_1
    const-string v1, ""

    .line 178
    .local v1, "path":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 179
    const-string v2, "media"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-static {p0, p2}, Landroid/media/ExtraRingtoneManager;->resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_3

    .line 182
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 184
    :cond_2
    const-string v2, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_3
    :goto_0
    invoke-static {p0, v1, p1}, Landroid/media/ExtraRingtoneManager;->copySound(Landroid/content/Context;Ljava/lang/String;I)V

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    return-void
.end method

.method private static shouldChangeDefaultTone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "uriString"    # Ljava/lang/String;

    .line 500
    if-eqz p3, :cond_0

    const-string v0, "NotificationXylophone.ogg"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {p0, p1, p2}, Landroid/media/ExtraRingtoneManager;->getAndUpdateUserChangeRecord(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 500
    :goto_0
    return v0
.end method

.method public static updateDefaultToneForX(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 476
    sget-object v0, Landroid/media/ExtraRingtoneManager;->NOTIFICATION_SOUND_TYPE:[I

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 477
    .local v3, "type":I
    invoke-static {v3}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "setting":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "uriString":Ljava/lang/String;
    invoke-static {p0, v3, v4, v5}, Landroid/media/ExtraRingtoneManager;->shouldChangeDefaultTone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->getDefaultNotificationSound(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 482
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "ExtraRingtoneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "change default tone for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", uriString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {p0, v3, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 488
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {p0, v3, v4}, Landroid/media/ExtraRingtoneManager;->recordNotificationSoundChange(Landroid/content/Context;ILjava/lang/String;)V

    .line 476
    .end local v3    # "type":I
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "uriString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_2
    return-void
.end method
