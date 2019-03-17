.class public Lcom/xiaomi/scanner/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;
    }
.end annotation


# static fields
.field public static final DELAY_TIME:J = 0xc8L

.field public static final EXTRA_INTENT_BUSINESS_CARD:Ljava/lang/String; = "miui.intent.action.scanbusinesscard"

.field public static final EXTRA_INTENT_IS_BACKTO_THIRDAPP:Ljava/lang/String; = "isBackToThirdApp"

.field public static final EXTRA_INTENT_MODULE_ACTION:Ljava/lang/String; = "android.intent.action.scanner"

.field public static final EXTRA_INTENT_MODULE_APP:Ljava/lang/String; = "miref"

.field public static final EXTRA_INTENT_MODULE_IMAGE_PATH:Ljava/lang/String; = "imagePath"

.field public static final EXTRA_INTENT_MODULE_INDEX:Ljava/lang/String; = "extra_intent_module_index"

.field public static final EXTRA_INTENT_MODULE_MIUI_ACTION:Ljava/lang/String; = "miui.intent.action.scanner"

.field public static final EXTRA_INTENT_MODULE_PACKAGE_NAME:Ljava/lang/String; = "fromApp"

.field private static final INSTALL_PRELOADED_APP_FLAG_NEED_CONFIRM:I = 0x1

.field private static final INSTALL_PRELOADED_APP_FLAG_SHOW_TOAST:I = 0x2

.field public static final INTENT_ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final MIUI_VERSION_LOWEST_NUMBER:I = 0x8

.field public static final SCAN_BARCODE_ACTION:Ljava/lang/String; = "android.intent.action.scanbarcode"

.field public static final SCAN_BARCODE_MIUI_ACTION:Ljava/lang/String; = "miui.intent.action.scanbarcode"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final TAOKE_ID:Ljava/lang/String; = "mm_113567256_12244709_53870994"

.field public static final XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static isShoppingMenuShown:Z

.field private static sNavigationBarType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AppUtil"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 105
    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/scanner/util/AppUtil;->sNavigationBarType:I

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/scanner/util/AppUtil;->isShoppingMenuShown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method public static checkDeviceHasNavigationBar()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 360
    const/4 v3, -0x1

    sget v4, Lcom/xiaomi/scanner/util/AppUtil;->sNavigationBarType:I

    if-eq v3, v4, :cond_1

    .line 361
    sget v3, Lcom/xiaomi/scanner/util/AppUtil;->sNavigationBarType:I

    if-ne v3, v1, :cond_0

    .line 366
    .local v0, "hasBar":Z
    :goto_0
    return v1

    .end local v0    # "hasBar":Z
    :cond_0
    move v1, v2

    .line 361
    goto :goto_0

    .line 363
    :cond_1
    const/16 v3, 0x52

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    .line 364
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    .line 365
    .restart local v0    # "hasBar":Z
    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    sput v1, Lcom/xiaomi/scanner/util/AppUtil;->sNavigationBarType:I

    move v1, v0

    .line 366
    goto :goto_0

    .end local v0    # "hasBar":Z
    :cond_3
    move v0, v2

    .line 364
    goto :goto_1

    .restart local v0    # "hasBar":Z
    :cond_4
    move v1, v2

    .line 365
    goto :goto_2
.end method

.method public static getBottomBarHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    if-nez p0, :cond_1

    .line 345
    sget-object v1, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "getBottomBarHeight error, null context"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 349
    .local v0, "bottom":I
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->checkDeviceHasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLauncherClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 150
    if-nez p0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v4

    .line 153
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/scanner/util/AndroidServices;->providePackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 160
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 328
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "getBottomBarHeight error, null context"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x0

    .line 340
    :goto_0
    return v1

    .line 331
    :cond_0
    const/4 v1, 0x0

    .line 333
    .local v1, "height":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 334
    .local v3, "resources":Landroid/content/res/Resources;
    const-string v4, "navigation_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 335
    .local v2, "resourceId":I
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    .end local v2    # "resourceId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_1
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Navi height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "getNavigationBarHeight error"

    invoke-static {v4, v5, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewYpoint(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 385
    if-nez p0, :cond_0

    .line 395
    :goto_0
    return v2

    .line 388
    :cond_0
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 390
    .local v1, "location":[I
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/4 v2, 0x1

    aget v2, v1, v2

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "getViewYpoint error"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static hideNavigationLayout(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 371
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 374
    :cond_0
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 375
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 377
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appUtilListener"    # Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;
    .param p3, "extra"    # Ljava/lang/Object;

    .prologue
    .line 282
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    :cond_0
    sget-object v3, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null context or null pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 287
    :cond_1
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_2

    .line 288
    new-instance v1, Lcom/xiaomi/scanner/util/AppUtil$1;

    invoke-direct {v1, p2, p3}, Lcom/xiaomi/scanner/util/AppUtil$1;-><init>(Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V

    .line 298
    .local v1, "observer":Landroid/content/pm/IPackageInstallObserver;
    const-string v3, "miui.content.pm.PreloadedAppPolicy"

    .line 299
    invoke-static {v3}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v3

    const-string v4, "installPreloadedDataApp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/content/pm/IPackageInstallObserver;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 301
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 300
    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result v2

    .line 303
    .local v2, "result":Z
    sget-object v3, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installPackage result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v1    # "observer":Landroid/content/pm/IPackageInstallObserver;
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "installPackage error"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/xiaomi/scanner/util/AppUtil$2;

    invoke-direct {v1, p2, p3}, Lcom/xiaomi/scanner/util/AppUtil$2;-><init>(Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V

    .line 314
    .local v1, "observer":Landroid/content/pm/IPackageInstallObserver2;
    const-string v3, "miui.content.pm.PreloadedAppPolicy"

    .line 315
    invoke-static {v3}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v3

    const-string v4, "installPreloadedDataApp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/content/pm/IPackageInstallObserver2;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 317
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 316
    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result v2

    .line 319
    .restart local v2    # "result":Z
    sget-object v3, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installPackage result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static isAmazonAssistantEnabled()Z
    .locals 4

    .prologue
    .line 405
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "enable_amazon_assistant"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInLowMemoryState(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 205
    if-nez p0, :cond_1

    .line 206
    sget-object v7, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "isInLowMemoryState error null context"

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return v6

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 210
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 211
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 214
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 215
    .local v1, "memSize":I
    new-array v4, v7, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    aput v8, v4, v6

    .line 216
    .local v4, "pids":[I
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v8

    aget-object v3, v8, v6

    .line 217
    .local v3, "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    .line 219
    .local v5, "pss":I
    sget-object v8, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInLowMemoryState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pss="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", memSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    iget-boolean v8, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v8, :cond_2

    mul-int/lit8 v8, v1, 0x4

    div-int/lit8 v8, v8, 0x5

    mul-int/lit16 v8, v8, 0x400

    if-le v5, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0
.end method

.method public static isKoreaPermissionShowed()Z
    .locals 2

    .prologue
    .line 274
    const-string v0, "koreaPermissionShow"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 137
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 139
    .local v1, "getPackageName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "isPackageAvailable - getPackageName.equalsIgnoreCase(packageName) - true"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v3, 0x1

    .line 146
    .end local v1    # "getPackageName":Ljava/lang/String;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to query for Package - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isRightVersion()Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 241
    :try_start_0
    const-string v6, "\\d+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 242
    .local v2, "pattern":Ljava/util/regex/Pattern;
    const-string v6, "android.os.SystemProperties"

    .line 243
    invoke-static {v6}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v6

    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ro.miui.ui.version.name"

    aput-object v11, v9, v10

    .line 244
    invoke-virtual {v6, v7, v8, v9}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v6

    .line 245
    invoke-virtual {v6}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->stringResult()Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 246
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 247
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 248
    .local v3, "version":I
    sget-object v6, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current miui version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const/16 v6, 0x8

    if-lt v3, v6, :cond_0

    .line 252
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "version":I
    :goto_0
    return v4

    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "version":I
    :cond_0
    move v4, v5

    .line 249
    goto :goto_0

    .line 250
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "version":I
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "get version error"

    invoke-static {v4, v6, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v5

    .line 252
    goto :goto_0
.end method

.method public static isRtlLayout()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRtlLayout(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    if-eqz p0, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 228
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 226
    goto :goto_0

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public static isUserAgreeToRun()Z
    .locals 4

    .prologue
    .line 269
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_user_agree_to_run"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveKoreaPermissionShowed()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "koreaPermissionShow"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public static saveUserAgreeToRun(Z)V
    .locals 3
    .param p0, "agree"    # Z

    .prologue
    .line 261
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_user_agree_to_run"

    invoke-virtual {v0, v1, v2, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    return-void
.end method

.method public static setAAFeatureShown(Z)V
    .locals 0
    .param p0, "isShown"    # Z

    .prologue
    .line 419
    sput-boolean p0, Lcom/xiaomi/scanner/util/AppUtil;->isShoppingMenuShown:Z

    .line 420
    return-void
.end method

.method public static shouldRedrawMenuAgain(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    sget-boolean v0, Lcom/xiaomi/scanner/util/AppUtil;->isShoppingMenuShown:Z

    if-eqz v0, :cond_0

    const-string v0, "com.amazon.aa"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/AppUtil;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 169
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "invalid param!"

    invoke-static {v4, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move v4, v5

    .line 196
    :goto_0
    return v4

    .line 173
    :cond_1
    sget-object v6, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppUtil;->getLauncherClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    sget-object v6, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 192
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaomi/scanner/util/AppUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v5

    .line 196
    goto/16 :goto_0
.end method
