.class final Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;
.super Ljava/lang/Object;
.source "TLogConfigSwitchReceiver.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;)V
    .locals 24
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/taobao/orange/OrangeConfig;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 28
    .local v4, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_d

    .line 29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 30
    .local v13, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 32
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "tlog_destroy"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 33
    .local v14, "tlogDestroy":Ljava/lang/String;
    const-string v20, "tlog_switch"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 34
    .local v19, "tlogSwitch":Ljava/lang/String;
    const-string v20, "tlog_level"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 35
    .local v16, "tlogLevel":Ljava/lang/String;
    const-string v20, "tlog_module"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 36
    .local v17, "tlogModule":Ljava/lang/String;
    const-string v20, "tlog_endtime"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 37
    .local v15, "tlogEndTime":Ljava/lang/String;
    const-string v20, "tlog_pull"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 39
    .local v18, "tlogPull":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getTLogControler()Lcom/taobao/tao/log/ITLogController;

    move-result-object v5

    .line 40
    .local v5, "controller":Lcom/taobao/tao/log/ITLogController;
    if-nez v5, :cond_0

    .line 126
    .end local v5    # "controller":Lcom/taobao/tao/log/ITLogController;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "tlogDestroy":Ljava/lang/String;
    .end local v15    # "tlogEndTime":Ljava/lang/String;
    .end local v16    # "tlogLevel":Ljava/lang/String;
    .end local v17    # "tlogModule":Ljava/lang/String;
    .end local v18    # "tlogPull":Ljava/lang/String;
    .end local v19    # "tlogSwitch":Ljava/lang/String;
    :goto_0
    return-void

    .line 44
    .restart local v5    # "controller":Lcom/taobao/tao/log/ITLogController;
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v14    # "tlogDestroy":Ljava/lang/String;
    .restart local v15    # "tlogEndTime":Ljava/lang/String;
    .restart local v16    # "tlogLevel":Ljava/lang/String;
    .restart local v17    # "tlogModule":Ljava/lang/String;
    .restart local v18    # "tlogPull":Ljava/lang/String;
    .restart local v19    # "tlogSwitch":Ljava/lang/String;
    :cond_0
    const-string v20, "TLogConfigSwitchReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The tlogDestroy is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  tlogSwitch is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  tlogLevel is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  tlogModule is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 47
    const-string v20, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 48
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->delete()V

    .line 49
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/taobao/tao/log/ITLogController;->openLog(Z)V

    .line 50
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/taobao/tao/log/ITLogController;->destroyLog(Z)V

    .line 51
    const-string v20, "tlog_switch"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 54
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/taobao/tao/log/ITLogController;->destroyLog(Z)V

    .line 60
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 61
    const-string v20, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 62
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/taobao/tao/log/ITLogController;->openLog(Z)V

    .line 63
    const-string v20, "tlog_switch"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    :cond_2
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 73
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/taobao/tao/log/ITLogController;->setLogLevel(Ljava/lang/String;)V

    .line 74
    const-string v20, "tlog_level"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 81
    invoke-static/range {v17 .. v17}, Lcom/taobao/tao/log/TLogUtils;->makeModule(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/taobao/tao/log/ITLogController;->setModuleFilter(Ljava/util/Map;)V

    .line 82
    const-string v20, "tlog_module"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 91
    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 92
    .local v12, "second":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    mul-int/lit16 v0, v12, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v8, v20, v22

    .line 96
    .end local v12    # "second":I
    .local v8, "endTime":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x5265c00

    add-long v10, v20, v22

    .line 97
    .local v10, "limitTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v20, v8, v20

    if-lez v20, :cond_a

    cmp-long v20, v8, v10

    if-gez v20, :cond_a

    .line 98
    invoke-interface {v5, v8, v9}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 99
    const-string v20, "tlog_endtime"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    .end local v8    # "endTime":J
    .end local v10    # "limitTime":J
    :goto_3
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 113
    const-string v20, "true"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 114
    invoke-static {}, Lcom/taobao/tao/log/TaskManager;->getInstance()Lcom/taobao/tao/log/TaskManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/taobao/tao/log/TaskManager;->queryTraceStatus(Landroid/content/Context;)V

    .line 116
    :cond_3
    const-string v20, "tlog_pull"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_4
    const-string v20, "tlog_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/taobao/tao/log/TLogUtils;->getAppBuildVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 57
    :cond_5
    const-string v20, "TLogConfigSwitchReceiver"

    const-string v21, "The tlogDestroy is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 64
    :cond_6
    const-string v20, "false"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 65
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/taobao/tao/log/ITLogController;->openLog(Z)V

    .line 66
    const-string v20, "tlog_switch"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 69
    :cond_7
    const-string v20, "TLogConfigSwitchReceiver"

    const-string v21, "The tlogSwitch is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    :cond_8
    const-string v20, "TLogConfigSwitchReceiver"

    const-string v21, "The tlogLevel is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    :cond_9
    const-string v20, "TLogConfigSwitchReceiver"

    const-string v21, "The tlogModule is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v6

    .line 94
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .restart local v8    # "endTime":J
    goto/16 :goto_2

    .line 100
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "limitTime":J
    :cond_a
    cmp-long v20, v8, v10

    if-ltz v20, :cond_b

    .line 101
    invoke-interface {v5, v10, v11}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 102
    const-string v20, "tlog_endtime"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 104
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-interface {v5, v0, v1}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 105
    const-string v20, "tlog_endtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 108
    .end local v8    # "endTime":J
    .end local v10    # "limitTime":J
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-interface {v5, v0, v1}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 109
    const-string v20, "tlog_endtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 123
    .end local v5    # "controller":Lcom/taobao/tao/log/ITLogController;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "tlogDestroy":Ljava/lang/String;
    .end local v15    # "tlogEndTime":Ljava/lang/String;
    .end local v16    # "tlogLevel":Ljava/lang/String;
    .end local v17    # "tlogModule":Ljava/lang/String;
    .end local v18    # "tlogPull":Ljava/lang/String;
    .end local v19    # "tlogSwitch":Ljava/lang/String;
    :cond_d
    const-string v20, "TLogConfigSwitchReceiver"

    const-string v21, "TLogConfigSwitchReceiver --> the config is null!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
