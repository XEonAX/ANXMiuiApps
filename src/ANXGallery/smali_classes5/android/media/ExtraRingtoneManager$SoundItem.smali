.class Landroid/media/ExtraRingtoneManager$SoundItem;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExtraRingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundItem"
.end annotation


# instance fields
.field buildInPathRes:I

.field mActualDefaultRingtoneUri:Landroid/net/Uri;

.field mDefaultRingtoneUri:Landroid/net/Uri;

.field mRingtoneType:I

.field mSettingType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ringtoneType"    # I
    .param p2, "actualDefaultRingtoneUri"    # Landroid/net/Uri;
    .param p3, "defaultRingtoneUri"    # Landroid/net/Uri;
    .param p4, "settingType"    # Ljava/lang/String;
    .param p5, "id"    # I

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput p1, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    .line 440
    iput-object p2, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mActualDefaultRingtoneUri:Landroid/net/Uri;

    .line 441
    iput-object p3, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 442
    iput-object p4, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    .line 443
    iput p5, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->buildInPathRes:I

    .line 444
    return-void
.end method
