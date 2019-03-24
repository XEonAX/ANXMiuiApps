.class public Lmiui/os/Environment;
.super Landroid/os/Environment;
.source "SourceFile"


# static fields
.field private static final Ea:Lcom/miui/internal/variable/Android_Os_Process_class;

.field private static final Eb:Ljava/lang/String; = "MIUI"

.field private static Ec:Ljava/io/File;

.field private static final Ed:Ljava/io/File;

.field private static final Ee:Ljava/io/File;

.field private static final Ef:Ljava/io/File;

.field private static final Eg:Ljava/io/File;

.field private static Eh:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/miui/internal/variable/Android_Os_Process_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Os_Process_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Os_Process_class$Factory;->get()Lcom/miui/internal/variable/Android_Os_Process_class;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->Ea:Lcom/miui/internal/variable/Android_Os_Process_class;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lmiui/os/Environment;->Ec:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->Ed:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->Ee:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "preset_apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->Ef:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->Eg:Ljava/io/File;

    .line 89
    const/4 v0, 0x0

    sput v0, Lmiui/os/Environment;->Eh:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCpuCount()I
    .locals 6

    .line 93
    sget v0, Lmiui/os/Environment;->Eh:I

    if-nez v0, :cond_2

    .line 94
    const-string v0, "cpu[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 95
    nop

    .line 96
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 97
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 96
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    sput v4, Lmiui/os/Environment;->Eh:I

    .line 103
    :cond_2
    sget v0, Lmiui/os/Environment;->Eh:I

    return v0
.end method

.method public static getExternalStorageMiuiDirectory()Ljava/io/File;
    .locals 3

    .line 47
    :try_start_0
    sget-object v0, Lmiui/os/Environment;->Ec:Ljava/io/File;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/io/File;

    .line 49
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->Ec:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    nop

    .line 56
    sget-object v0, Lmiui/os/Environment;->Ec:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lmiui/os/Environment;->Ec:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 61
    :cond_1
    sget-object v0, Lmiui/os/Environment;->Ec:Ljava/io/File;

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMiuiAppDirectory()Ljava/io/File;
    .locals 1

    .line 71
    sget-object v0, Lmiui/os/Environment;->Ee:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDirectory()Ljava/io/File;
    .locals 1

    .line 81
    sget-object v0, Lmiui/os/Environment;->Eg:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiDataDirectory()Ljava/io/File;
    .locals 1

    .line 66
    sget-object v0, Lmiui/os/Environment;->Ed:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiPresetAppDirectory()Ljava/io/File;
    .locals 1

    .line 76
    sget-object v0, Lmiui/os/Environment;->Ef:Ljava/io/File;

    return-object v0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .line 86
    const-string v0, "mounted"

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUsingMiui(Landroid/content/Context;)Z
    .locals 0

    .line 108
    invoke-static {p0}, Lmiui/util/AttributeResolver;->isUsingMiuiTheme(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
