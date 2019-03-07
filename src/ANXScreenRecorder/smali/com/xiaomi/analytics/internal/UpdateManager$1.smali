.class Lcom/xiaomi/analytics/internal/UpdateManager$1;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/UpdateManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/UpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 130
    sget-object v5, Lcom/xiaomi/analytics/internal/Constants;->API_VER:Lcom/xiaomi/analytics/internal/Version;

    .line 131
    .local v5, "apiVer":Lcom/xiaomi/analytics/internal/Version;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/SdkManager;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v8

    .line 132
    .local v8, "coreVer":Lcom/xiaomi/analytics/internal/Version;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 133
    .local v26, "ts":J
    const/16 v22, 0x0

    .local v22, "retry":I
    move/from16 v23, v22

    .line 134
    .end local v22    # "retry":I
    .local v23, "retry":I
    :goto_0
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "retry":I
    .restart local v22    # "retry":I
    const/16 v30, 0x2

    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 136
    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getAndroidVersionNumber()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "androidVersionNumber":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getMIUIBuild()Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, "miuiBuild":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getHashedIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, "hashedIMEI":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "deviceModel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v15

    .line 141
    .local v15, "networkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$100(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v17

    .line 142
    .local v17, "nonce":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getRegion()Ljava/lang/String;

    move-result-object v20

    .line 144
    .local v20, "region":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getMIUIVersion()Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, "miuiVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v19, "path":Ljava/lang/StringBuilder;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "av"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "cv"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "d"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "f"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isInternationalBuild()Z

    move-result v30

    if-nez v30, :cond_0

    .line 152
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "i"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "m"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "nonce"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "p"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "r"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ts"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "v"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v30, "miui_sdkconfig_jafej!@#)(*e@!#"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 164
    .local v24, "sign":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isInternationalBuild()Z

    move-result v30

    if-eqz v30, :cond_4

    const-string v30, "https://sdkconfig.ad.intl.xiaomi.com/api/checkupdate/lastusefulversion2?"

    :goto_1
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v28, "urlBuilder":Ljava/lang/StringBuilder;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "av="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&cv="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&d="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&f="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isInternationalBuild()Z

    move-result v30

    if-nez v30, :cond_1

    .line 170
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&i="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&m="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&n="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&nonce="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&p="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&r="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&ts="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&v="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "&sign="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v30, "UpdateManager"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v30, Ljava/net/URL;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 182
    .local v7, "conn":Ljava/net/HttpURLConnection;
    const-string v30, "GET"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 184
    sget v30, Lcom/xiaomi/analytics/internal/Constants;->CONNECT_TIME_OUT_MILLIS:I

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 185
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 186
    new-instance v21, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/util/IOUtil;->inputStream2ByteArray(Ljava/io/InputStream;)[B

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 187
    .local v21, "result":Ljava/lang/String;
    const-string v30, "UpdateManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "result "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v12, "json":Lorg/json/JSONObject;
    const-string v30, "url"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 190
    .local v25, "url":Ljava/lang/String;
    const-string v30, "code"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 191
    .local v6, "code":I
    const-string v30, "v"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 192
    .local v29, "ver":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    const-string v31, "force"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$202(Lcom/xiaomi/analytics/internal/UpdateManager;I)I

    .line 193
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_5

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 194
    new-instance v16, Lcom/xiaomi/analytics/internal/Version;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    .line 195
    .local v16, "newVersion":Lcom/xiaomi/analytics/internal/Version;
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isAlphaBuild()Z

    move-result v30

    if-nez v30, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/xiaomi/analytics/internal/Version;->build:I

    move/from16 v30, v0

    if-nez v30, :cond_3

    .line 197
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    const-string v31, "md5"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$302(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$402(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$500(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/Runnable;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/xiaomi/analytics/internal/util/TaskRunner;->execute(Ljava/lang/Runnable;)V

    .line 214
    .end local v4    # "androidVersionNumber":Ljava/lang/String;
    .end local v6    # "code":I
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "deviceModel":Ljava/lang/String;
    .end local v11    # "hashedIMEI":Ljava/lang/String;
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v13    # "miuiBuild":Ljava/lang/String;
    .end local v14    # "miuiVersion":Ljava/lang/String;
    .end local v15    # "networkType":I
    .end local v16    # "newVersion":Lcom/xiaomi/analytics/internal/Version;
    .end local v17    # "nonce":Ljava/lang/String;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "path":Ljava/lang/StringBuilder;
    .end local v20    # "region":Ljava/lang/String;
    .end local v21    # "result":Ljava/lang/String;
    .end local v24    # "sign":Ljava/lang/String;
    .end local v25    # "url":Ljava/lang/String;
    .end local v28    # "urlBuilder":Ljava/lang/StringBuilder;
    .end local v29    # "ver":Ljava/lang/String;
    :cond_3
    return-void

    .line 164
    .restart local v4    # "androidVersionNumber":Ljava/lang/String;
    .restart local v9    # "deviceModel":Ljava/lang/String;
    .restart local v11    # "hashedIMEI":Ljava/lang/String;
    .restart local v13    # "miuiBuild":Ljava/lang/String;
    .restart local v14    # "miuiVersion":Ljava/lang/String;
    .restart local v15    # "networkType":I
    .restart local v17    # "nonce":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v19    # "path":Ljava/lang/StringBuilder;
    .restart local v20    # "region":Ljava/lang/String;
    .restart local v24    # "sign":Ljava/lang/String;
    :cond_4
    const-string v30, "https://sdkconfig.ad.xiaomi.com/api/checkupdate/lastusefulversion2?"

    goto/16 :goto_1

    .line 202
    .restart local v6    # "code":I
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "json":Lorg/json/JSONObject;
    .restart local v21    # "result":Ljava/lang/String;
    .restart local v25    # "url":Ljava/lang/String;
    .restart local v28    # "urlBuilder":Ljava/lang/StringBuilder;
    .restart local v29    # "ver":Ljava/lang/String;
    :cond_5
    const/16 v30, -0x8

    move/from16 v0, v30

    if-ne v6, v0, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    const-string v31, "failMsg"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$600(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v26

    move/from16 v23, v22

    .line 212
    .end local v22    # "retry":I
    .restart local v23    # "retry":I
    goto/16 :goto_0

    .line 208
    .end local v4    # "androidVersionNumber":Ljava/lang/String;
    .end local v6    # "code":I
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "deviceModel":Ljava/lang/String;
    .end local v11    # "hashedIMEI":Ljava/lang/String;
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v13    # "miuiBuild":Ljava/lang/String;
    .end local v14    # "miuiVersion":Ljava/lang/String;
    .end local v15    # "networkType":I
    .end local v17    # "nonce":Ljava/lang/String;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "path":Ljava/lang/StringBuilder;
    .end local v20    # "region":Ljava/lang/String;
    .end local v21    # "result":Ljava/lang/String;
    .end local v23    # "retry":I
    .end local v24    # "sign":Ljava/lang/String;
    .end local v25    # "url":Ljava/lang/String;
    .end local v28    # "urlBuilder":Ljava/lang/StringBuilder;
    .end local v29    # "ver":Ljava/lang/String;
    .restart local v22    # "retry":I
    :catch_0
    move-exception v10

    .line 210
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$700(Lcom/xiaomi/analytics/internal/UpdateManager;J)V

    .line 211
    const-string v30, "UpdateManager"

    const-string v31, "exception "

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v10}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v23, v22

    .line 212
    .end local v22    # "retry":I
    .restart local v23    # "retry":I
    goto/16 :goto_0
.end method
