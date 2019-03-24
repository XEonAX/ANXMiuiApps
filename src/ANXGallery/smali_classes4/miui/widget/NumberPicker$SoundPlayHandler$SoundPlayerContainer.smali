.class Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker$SoundPlayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPlayerContainer"
.end annotation


# static fields
.field private static final XA:J = 0x32L


# instance fields
.field private XB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private XC:Landroid/media/SoundPool;

.field private XD:I

.field private XE:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lmiui/util/ArraySet;

    invoke-direct {v0}, Lmiui/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XB:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/NumberPicker$1;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>()V

    return-void
.end method


# virtual methods
.method init(I)V
    .locals 4

    .line 179
    iget-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    .line 181
    iget-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$raw;->numberpicker_value_change:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XD:I

    .line 184
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XB:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method play()V
    .locals 10

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    iget-object v2, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XE:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 190
    iget-object v3, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    iget v4, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XD:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 191
    iput-wide v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XE:J

    .line 193
    :cond_0
    return-void
.end method

.method release(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XB:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XB:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    .line 198
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->XC:Landroid/media/SoundPool;

    .line 200
    :cond_0
    return-void
.end method
