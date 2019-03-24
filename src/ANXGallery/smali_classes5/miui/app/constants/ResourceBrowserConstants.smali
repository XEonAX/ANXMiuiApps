.class public interface abstract Lmiui/app/constants/ResourceBrowserConstants;
.super Ljava/lang/Object;
.source "ResourceBrowserConstants.java"


# static fields
.field public static final ACTION_PICK_RESOURCE:Ljava/lang/String; = "miui.intent.action.PICK_RESOURCE"

.field public static final CONFIG_PATH:Ljava/lang/String;

.field public static final MAML_CONFIG_PATH:Ljava/lang/String;

.field public static final MIUI_PATH:Ljava/lang/String;

.field public static final REQUEST_CURRENT_USING_PATH:Ljava/lang/String; = "REQUEST_CURRENT_USING_PATH"

.field public static final REQUEST_TRACK_ID:Ljava/lang/String; = "REQUEST_TRACK_ID"

.field public static final RESPONSE_PICKED_RESOURCE:Ljava/lang/String; = "RESPONSE_PICKED_RESOURCE"

.field public static final RESPONSE_TRACK_ID:Ljava/lang/String; = "RESPONSE_TRACK_ID"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/FileUtils;->normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/app/constants/ResourceBrowserConstants;->MIUI_PATH:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/app/constants/ResourceBrowserConstants;->MIUI_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/app/constants/ResourceBrowserConstants;->CONFIG_PATH:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/app/constants/ResourceBrowserConstants;->CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "maml/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/app/constants/ResourceBrowserConstants;->MAML_CONFIG_PATH:Ljava/lang/String;

    return-void
.end method
