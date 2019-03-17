.class Lcom/xiaomi/push/service/awake/module/AwakeManager$1;
.super Ljava/lang/Object;
.source "AwakeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/awake/module/AwakeManager;->wakeup(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$awakeInfo:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$spackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/awake/module/AwakeManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/awake/module/AwakeManager;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    iput-object p2, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$spackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x3f0

    .line 111
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 113
    :try_start_0
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    const/16 v10, 0x3e9

    const-string v11, "get message"

    invoke-static {v8, v9, v10, v11}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    new-instance v3, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "action"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    const-string v8, "awakened_app_packagename"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "targetPackageName":Ljava/lang/String;
    const-string v8, "awake_app_packagename"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "srcPackageName":Ljava/lang/String;
    const-string v8, "awake_app"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "srcAppId":Ljava/lang/String;
    const-string v8, "awake_type"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "helpType":Ljava/lang/String;
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$spackageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 121
    :cond_0
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    const/16 v10, 0x3f0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "A receive a incorrect message with incorrect package info"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "helpType":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "srcAppId":Ljava/lang/String;
    .end local v6    # "srcPackageName":Ljava/lang/String;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 124
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "helpType":Ljava/lang/String;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "srcAppId":Ljava/lang/String;
    .restart local v6    # "srcPackageName":Ljava/lang/String;
    .restart local v7    # "targetPackageName":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 125
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 126
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 127
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 128
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    invoke-virtual {v8, v6}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setPackageName(Ljava/lang/String;)V

    .line 129
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    invoke-virtual {v8, v5}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setAppId(Ljava/lang/String;)V

    .line 130
    new-instance v4, Lcom/xiaomi/push/service/awake/module/AwakeInfo;

    invoke-direct {v4}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;-><init>()V

    .line 131
    .local v4, "localAwakeInfo":Lcom/xiaomi/push/service/awake/module/AwakeInfo;
    invoke-virtual {v4, v0}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->setAction(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4, v7}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->setTargetPackageName(Ljava/lang/String;)V

    .line 133
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->setAwakeInfo(Ljava/lang/String;)V

    .line 134
    const-string v8, "service"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 136
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    sget-object v9, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_ACTION:Lcom/xiaomi/push/service/awake/module/HelpType;

    iget-object v10, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    invoke-static {v8, v9, v10, v4}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->access$000(Lcom/xiaomi/push/service/awake/module/AwakeManager;Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "helpType":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "localAwakeInfo":Lcom/xiaomi/push/service/awake/module/AwakeInfo;
    .end local v5    # "srcAppId":Ljava/lang/String;
    .end local v6    # "srcPackageName":Ljava/lang/String;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 153
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    const-string v10, "A meet a exception when receive the message"

    invoke-static {v8, v9, v13, v10}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "helpType":Ljava/lang/String;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "localAwakeInfo":Lcom/xiaomi/push/service/awake/module/AwakeInfo;
    .restart local v5    # "srcAppId":Ljava/lang/String;
    .restart local v6    # "srcPackageName":Ljava/lang/String;
    .restart local v7    # "targetPackageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-virtual {v4, v8}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->setClassName(Ljava/lang/String;)V

    .line 139
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    sget-object v9, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_COMPONENT:Lcom/xiaomi/push/service/awake/module/HelpType;

    iget-object v10, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    invoke-static {v8, v9, v10, v4}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->access$000(Lcom/xiaomi/push/service/awake/module/AwakeManager;Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V

    goto :goto_0

    .line 141
    :cond_3
    sget-object v8, Lcom/xiaomi/push/service/awake/module/HelpType;->ACTIVITY:Lcom/xiaomi/push/service/awake/module/HelpType;

    iget-object v8, v8, Lcom/xiaomi/push/service/awake/module/HelpType;->typeValue:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 142
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    sget-object v9, Lcom/xiaomi/push/service/awake/module/HelpType;->ACTIVITY:Lcom/xiaomi/push/service/awake/module/HelpType;

    iget-object v10, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    invoke-static {v8, v9, v10, v4}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->access$000(Lcom/xiaomi/push/service/awake/module/AwakeManager;Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V

    goto :goto_0

    .line 143
    :cond_4
    sget-object v8, Lcom/xiaomi/push/service/awake/module/HelpType;->PROVIDER:Lcom/xiaomi/push/service/awake/module/HelpType;

    iget-object v8, v8, Lcom/xiaomi/push/service/awake/module/HelpType;->typeValue:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 144
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->this$0:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    sget-object v9, Lcom/xiaomi/push/service/awake/module/HelpType;->PROVIDER:Lcom/xiaomi/push/service/awake/module/HelpType;

    iget-object v10, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    invoke-static {v8, v9, v10, v4}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->access$000(Lcom/xiaomi/push/service/awake/module/AwakeManager;Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V

    goto/16 :goto_0

    .line 146
    :cond_5
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    const/16 v10, 0x3f0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "A receive a incorrect message with unknown type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v4    # "localAwakeInfo":Lcom/xiaomi/push/service/awake/module/AwakeInfo;
    :cond_6
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$awakeInfo:Ljava/lang/String;

    const/16 v10, 0x3f0

    const-string v11, "A receive a incorrect message with empty type"

    invoke-static {v8, v9, v10, v11}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 156
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "helpType":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "srcAppId":Ljava/lang/String;
    .end local v6    # "srcPackageName":Ljava/lang/String;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;->val$context:Landroid/content/Context;

    const-string v9, "null"

    const-string v10, "A receive a incorrect message with empty info"

    invoke-static {v8, v9, v13, v10}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method
