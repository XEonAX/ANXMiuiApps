.class public Lmiui/util/AppConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppConstants"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentApplication()Landroid/app/Application;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ActivityThread_class;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->currentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    .line 27
    :cond_0
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getSdkLevel(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 37
    const-string v0, "com.miui.core"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget p0, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    return p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/core/ManifestParser;->createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/module/Module;->getLevel()I

    move-result p0

    return p0
.end method
