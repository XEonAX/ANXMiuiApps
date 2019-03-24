.class Lmiui/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EZ:Lmiui/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lmiui/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->EZ:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 267
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 268
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->EZ:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->b(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->EZ:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->c(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->EZ:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->c(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->EZ:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->d(Lmiui/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 270
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->EZ:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->b(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 272
    :cond_0
    return-void
.end method
