.class public Lmiui/util/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static final EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"

.field private static final TAG:Ljava/lang/String; = "NotificationHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static setSubstituteAppName(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .locals 2
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "appName"    # Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.substName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 71
    return-void
.end method

.method public static setTargetPkg(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 32
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p1, p2}, Lmiui/util/NotificationHelper;->setTargetPkgForMiui(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    invoke-static {p0, p1, p2}, Lmiui/util/NotificationHelper;->setTargetPkgForAndroid(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static setTargetPkgForAndroid(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 51
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 52
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 53
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 54
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 57
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 58
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "appName":Ljava/lang/String;
    invoke-static {p1, v3}, Lmiui/util/NotificationHelper;->setSubstituteAppName(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "appName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "NotificationHelper"

    const-string v3, "setTargetPkg failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private static setTargetPkgForMiui(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 41
    .local v0, "notification":Landroid/app/Notification;
    const-class v1, Landroid/app/Notification;

    const-string v2, "extraNotification"

    const-class v3, Landroid/app/MiuiNotification;

    invoke-static {v1, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MiuiNotification;

    .line 44
    .local v1, "miuiNotification":Landroid/app/MiuiNotification;
    invoke-virtual {v1, p1}, Landroid/app/MiuiNotification;->setTargetPkg(Ljava/lang/CharSequence;)V

    .line 45
    return-object v0
.end method
