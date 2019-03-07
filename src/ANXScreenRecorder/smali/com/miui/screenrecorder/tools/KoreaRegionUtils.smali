.class public Lcom/miui/screenrecorder/tools/KoreaRegionUtils;
.super Ljava/lang/Object;
.source "KoreaRegionUtils.java"


# static fields
.field private static final FLAG_NECESSARY:Ljava/lang/String; = "1"

.field private static final KOREA_AUTHORIZE_ACTION:Ljava/lang/String; = "miui.intent.action.APP_PERMISSION_USE"

.field private static final KOREA_AUTH_REQUEST_CODE:I = 0x903

.field private static final KOREA_AUTH_RESULT_CODE:I = 0x904

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final PERMISSION_MICROPHONE:Ljava/lang/String; = "android.permission-group.MICROPHONE"

.field private static final PERMISSION_STORAGE:Ljava/lang/String; = "android.permission-group.STORAGE"

.field private static final REGION_KOREA:Ljava/lang/String; = "KR"

.field private static final SEPARATOR:Ljava/lang/String; = "@"

.field private static final TAG:Ljava/lang/String; = "KoreaRegionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processCallBack(II)Z
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    const/16 v1, 0x903

    if-ne p0, v1, :cond_0

    const/16 v1, 0x904

    if-ne p1, v1, :cond_0

    .line 53
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->saveShowPermissionsInfoForKorea(Z)V

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showPermissionsForKorea(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 28
    const-string v4, "KR"

    invoke-static {v4}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInThisCountry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v3

    .line 31
    :cond_1
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->isShowPermissionsInfoForKorea()Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v4, "miui.intent.action.APP_PERMISSION_USE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.permission-group.STORAGE@1@null@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f080039

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.permission-group.MICROPHONE@1@null@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f080038

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v4, "extra_main_permission_groups"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 39
    const-string v4, "extra_pkgname"

    const-string v5, "com.miui.screenrecorder"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/16 v4, 0x903

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v3, 0x0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KoreaRegionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "korea authorize error\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
