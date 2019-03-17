.class public final Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;
.super Ljava/lang/Object;
.source "EditorGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;,
        Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;,
        Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Z

.field public static final f:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

.field public static final g:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

.field public static final h:Z

.field public static final i:Ljava/lang/String;

.field public static final j:Z

.field public static final k:Z

.field public static final l:Ljava/util/concurrent/Executor;

.field private static final m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

.field private static final n:Ljava/util/Date;

.field private static o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, ".jpg"

    aput-object v3, v0, v1

    const-string v3, ".jpeg"

    aput-object v3, v0, v2

    const-string v3, ".png"

    aput-object v3, v0, v5

    const-string v3, ".webp"

    aput-object v3, v0, v6

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a:[Ljava/lang/String;

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ".mp4"

    aput-object v3, v0, v1

    const-string v3, ".3gp"

    aput-object v3, v0, v2

    const-string v3, ".3gpp"

    aput-object v3, v0, v5

    const-string v3, ".mov"

    aput-object v3, v0, v6

    const-string v3, ".k3g"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, ".acc"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, ".avi"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, ".wmv"

    aput-object v4, v0, v3

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->b:[Ljava/lang/String;

    .line 38
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, ".aac"

    aput-object v3, v0, v1

    const-string v3, ".mp3"

    aput-object v3, v0, v2

    const-string v3, ".3gp"

    aput-object v3, v0, v5

    const-string v3, ".3gpp"

    aput-object v3, v0, v6

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->c:[Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/BuildConfig;->KM_EDITION:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    .line 84
    invoke-static {v1, v1, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a(III)Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->n:Ljava/util/Date;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->d:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->DeviceLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->e:Z

    .line 179
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->RC:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->f:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    .line 184
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->PlayStore:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->WIFI_AND_MOBILE:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    :goto_1
    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->g:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    .line 185
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->DeviceLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-ne v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->h:Z

    .line 199
    const-string v0, "KineMaster"

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->o:Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->i:Ljava/lang/String;

    .line 279
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->PlayStore:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-ne v0, v3, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->j:Z

    .line 283
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->PlayStore:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-ne v0, v3, :cond_4

    :goto_4
    sput-boolean v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->k:Z

    .line 908
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->l:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->ASK_WIFI_MOBILE_NEVER:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 185
    goto :goto_2

    :cond_3
    move v0, v1

    .line 279
    goto :goto_3

    :cond_4
    move v2, v1

    .line 283
    goto :goto_4
.end method

.method public static a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->c()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(III)Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 790
    move v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a(IIIIII)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static a(IIIIII)Ljava/util/Date;
    .locals 7

    .prologue
    .line 794
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 795
    add-int/lit8 v2, p1, -0x1

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 796
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    sput-object p0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->o:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public static final a(I)Z
    .locals 1

    .prologue
    .line 295
    if-lez p0, :cond_0

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "keepfileFG2HJ6D4"

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.nexstreaming.kinemaster.builtin.watermark."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 312
    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->DeviceLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-ne v1, v2, :cond_0

    move v1, v0

    .line 313
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 314
    shl-int/lit8 v0, v0, 0x8

    .line 315
    or-int/lit8 v2, v0, 0x20

    .line 313
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 317
    :cond_0
    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->TimeLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->m:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->PlayStore:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    if-ne v1, v2, :cond_2

    .line 318
    :cond_1
    const v1, 0x8456

    move v3, v0

    move v0, v1

    move v1, v3

    .line 319
    :goto_1
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 320
    shl-int/lit8 v0, v0, 0x10

    .line 321
    or-int/lit16 v2, v0, 0x2845

    .line 319
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 324
    :cond_2
    const/high16 v1, 0x134a0000

    xor-int/2addr v0, v1

    .line 325
    const v1, 0x958e

    xor-int/2addr v0, v1

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 842
    if-nez p0, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 875
    :goto_0
    return-object v0

    .line 846
    :cond_0
    const-string v2, "Ax/VXn_zsAiwFi[CITPC;y2c}*0B\'S0-7&QznQlMa6U9gmSoighZeC&@$-hAaXiN"

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 851
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 853
    const/16 v0, 0x8

    new-array v6, v0, [C

    move v0, v1

    .line 854
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 855
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v7

    const v8, 0xfffffff

    and-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0x5e

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    aput-char v7, v6, v0

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 858
    :cond_1
    aget-char v0, v6, v1

    xor-int/lit8 v0, v0, 0x3f

    .line 859
    const/4 v5, 0x1

    aget-char v5, v6, v5

    xor-int/lit16 v5, v5, 0x81

    .line 862
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 866
    :goto_2
    if-ge v1, v4, :cond_2

    .line 867
    add-int v7, v0, v1

    rem-int/lit8 v7, v7, 0x40

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 868
    add-int v8, v5, v1

    rem-int/lit8 v8, v8, 0x8

    aget-char v8, v6, v8

    .line 869
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 870
    add-int/lit8 v9, v9, -0x20

    add-int/2addr v7, v9

    sub-int/2addr v7, v8

    add-int/lit16 v7, v7, 0xbc

    rem-int/lit8 v7, v7, 0x5e

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    .line 872
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 875
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/io/File;
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/io/File;
    .locals 3

    .prologue
    .line 562
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static g()Ljava/io/File;
    .locals 3

    .prologue
    .line 594
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Plugins"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Ljava/io/File;
    .locals 3

    .prologue
    .line 606
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AssetPlugins"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Ljava/io/File;
    .locals 3

    .prologue
    .line 664
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Projects"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Overlays"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
