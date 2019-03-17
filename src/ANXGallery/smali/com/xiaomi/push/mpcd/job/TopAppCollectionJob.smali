.class public Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "TopAppCollectionJob.java"


# instance fields
.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 33
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;->preferences:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method


# virtual methods
.method public collectInfo()Ljava/lang/String;
    .locals 22

    .prologue
    .line 38
    const/16 v16, 0x0

    .line 40
    .local v16, "result":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;->context:Landroid/content/Context;

    const-string v19, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 41
    .local v8, "activityManager":Landroid/app/ActivityManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v19

    if-ge v3, v0, :cond_0

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 43
    .local v18, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 76
    .end local v8    # "activityManager":Landroid/app/ActivityManager;
    .end local v18    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const/4 v3, 0x0

    .line 85
    :goto_1
    return-object v3

    .line 46
    .restart local v8    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;->context:Landroid/content/Context;

    const-string/jumbo v19, "usagestats"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 48
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 49
    .local v9, "cal":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 50
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 51
    .local v4, "beginTime":J
    const/4 v3, 0x5

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 52
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 57
    .local v6, "endTime":J
    const/4 v3, 0x0

    .line 58
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v12

    .line 59
    .local v12, "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/misc/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    const/4 v3, 0x0

    goto :goto_1

    .line 62
    :cond_1
    const-wide/16 v14, 0x0

    .line 63
    .local v14, "recentTime":J
    const-string v13, ""

    .line 64
    .local v13, "recentPkg":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_3

    .line 65
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 66
    .local v17, "stats":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getLastTimeStamp()J

    move-result-wide v20

    cmp-long v3, v20, v14

    if-lez v3, :cond_2

    .line 67
    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getLastTimeStamp()J

    move-result-wide v14

    .line 68
    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 64
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 71
    .end local v17    # "stats":Landroid/app/usage/UsageStats;
    :cond_3
    move-object/from16 v16, v13

    goto :goto_0

    .line 80
    .end local v2    # "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    .end local v4    # "beginTime":J
    .end local v6    # "endTime":J
    .end local v8    # "activityManager":Landroid/app/ActivityManager;
    .end local v9    # "cal":Ljava/util/Calendar;
    .end local v10    # "i":I
    .end local v12    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v13    # "recentPkg":Ljava/lang/String;
    .end local v14    # "recentTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;->preferences:Landroid/content/SharedPreferences;

    const-string v19, "ltapn"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "lastAppPn":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 82
    const-string v3, "^"

    goto :goto_1

    .line 84
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v19, "ltapn"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v3, v16

    .line 85
    goto/16 :goto_1

    .line 73
    .end local v11    # "lastAppPn":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->TopApp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x9

    return v0
.end method
