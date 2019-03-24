.class public Lmiui/provider/MiCloudSmsCmd;
.super Ljava/lang/Object;
.source "MiCloudSmsCmd.java"


# static fields
.field private static final ACTIVATION_SMS_PREFIX:Ljava/lang/String; = "AC/"

.field private static final ACTIVATION_SMS_PREFIX_2:Ljava/lang/String; = "ACT/"

.field private static final CMD_INDEX:I = 0x1

.field private static final HEADER_INDEX:I = 0x0

.field private static final MSG_ID_INDEX:I = 0x2

.field private static final SEPARATOR:Ljava/lang/String; = ","

.field private static final SMS_CMD_HEADER:Ljava/lang/String; = "mfc"

.field private static final SMS_CMD_HEADER_V1:Ljava/lang/String; = "mf"

.field private static final SMS_CMD_TAIL:Ljava/lang/String; = "##"

.field private static final SMS_CMD_TAIL_V1:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String; = "MiCloudSmsCmd"

.field private static final TIME_INDEX:I = 0x3

.field public static final TYPE_DISCARD_TOKEN:Ljava/lang/String; = "d"

.field public static final TYPE_LOCATION:Ljava/lang/String; = "l"

.field public static final TYPE_LOCK:Ljava/lang/String; = "k"

.field public static final TYPE_NOISE:Ljava/lang/String; = "n"

.field public static final TYPE_WIPE:Ljava/lang/String; = "w"

.field private static sHexChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 266
    const/16 v0, 0x7b

    new-array v0, v0, [Z

    sput-object v0, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    .line 268
    const/16 v0, 0x41

    .local v0, "c":C
    :goto_0
    const/16 v1, 0x5a

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 269
    sget-object v1, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    .line 268
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 271
    .end local v0    # "c":C
    :cond_0
    const/16 v0, 0x61

    .restart local v0    # "c":C
    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 272
    sget-object v1, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    .line 271
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_1

    .line 274
    .end local v0    # "c":C
    :cond_1
    const/16 v0, 0x30

    .restart local v0    # "c":C
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 275
    sget-object v1, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    .line 274
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_2

    .line 277
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 13
    invoke-static {p0, p1, p2}, Lmiui/provider/MiCloudSmsCmd;->transferToOldVersionFindDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .line 183
    const-string v0, "AC/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 185
    invoke-static {p0, p1, p2, p3}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 187
    :cond_0
    const-string v1, "MiCloudSmsCmd"

    const-string v2, "checkAndDispatchActivationSms: The message looks like an activation"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v1, "AC/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 189
    .local v1, "vkey1Start":I
    add-int/lit8 v2, v1, 0x20

    .line 190
    .local v2, "colonStart":I
    add-int/lit8 v3, v2, 0x1

    .line 191
    .local v3, "msgIdStart":I
    add-int/lit8 v4, v3, 0xb

    .line 192
    .local v4, "msgIdEnd":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    if-ge v5, v4, :cond_1

    .line 193
    const-string v5, "MiCloudSmsCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndDispatchActivationSms: length check failed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v6

    .line 196
    :cond_1
    invoke-static {p3, v1, v2}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 197
    const-string v5, "MiCloudSmsCmd"

    const-string v7, "checkAndDispatchActivationSms: left hex check failed"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v6

    .line 200
    :cond_2
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3a

    if-eq v5, v7, :cond_3

    .line 201
    const-string v5, "MiCloudSmsCmd"

    const-string v7, "checkAndDispatchActivationSms: colon check failed"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v6

    .line 204
    :cond_3
    invoke-static {p3, v3, v4}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_4

    .line 205
    const-string v5, "MiCloudSmsCmd"

    const-string v7, "checkAndDispatchActivationSms: right hex check failed"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v6

    .line 208
    :cond_4
    const-string v5, "MiCloudSmsCmd"

    const-string v6, "checkAndDispatchActivationSms: activation SMS acknowledged, broadcasting..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.xiaomi.action.ACTIVATION_SMS_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "extra_sim_index"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v6, "extra_address"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v6, "extra_msg_id"

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v6, "extra_vkey1"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v6, "com.xiaomi.simactivate.service"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-static {}, Lmiui/provider/MiCloudSmsCmd;->getAllUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 216
    const/4 v6, 0x1

    return v6
.end method

.method private static checkAndDispatchActivationSms2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .line 220
    const-string v0, "ACT/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "pos":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 222
    return v1

    .line 224
    :cond_0
    const-string v2, "MiCloudSmsCmd"

    const-string v3, "checkAndDispatchActivationSmsi2: The message looks like an activation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v2, "ACT/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 226
    .local v2, "keyStart":I
    add-int/lit8 v3, v2, 0x20

    .line 227
    .local v3, "colonStart":I
    add-int/lit8 v4, v3, 0x1

    .line 228
    .local v4, "msgIdStart":I
    add-int/lit8 v5, v4, 0xb

    .line 229
    .local v5, "msgIdEnd":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 230
    const-string v6, "MiCloudSmsCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndDispatchActivationSms2: length check failed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v1

    .line 233
    :cond_1
    invoke-static {p3, v2, v3}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 234
    const-string v6, "MiCloudSmsCmd"

    const-string v7, "checkAndDispatchActivationSms2: left hex check failed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v1

    .line 237
    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_3

    .line 238
    const-string v6, "MiCloudSmsCmd"

    const-string v7, "checkAndDispatchActivationSms2: colon check failed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v1

    .line 241
    :cond_3
    invoke-static {p3, v4, v5}, Lmiui/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 242
    const-string v6, "MiCloudSmsCmd"

    const-string v7, "checkAndDispatchActivationSms2: right hex check failed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v1

    .line 245
    :cond_4
    const-string v1, "MiCloudSmsCmd"

    const-string v6, "checkAndDispatchActivationSms2: activation SMS acknowledged, broadcasting..."

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.xiaomi.action.ACTIVATION_SMS_2_RECEIVED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "extra_sim_index"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v6, "extra_address"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v6, "extra_sms"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v6, "com.xiaomi.simactivate.service"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-static {}, Lmiui/provider/MiCloudSmsCmd;->getAllUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 252
    const/4 v6, 0x1

    return v6
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 71
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .line 66
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static checkSmsCmd(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "oriIntent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "slotId"    # I
    .param p5, "subId"    # I

    .line 55
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mfc"

    .line 56
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "mf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_0
    const-string v0, "##"

    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static/range {p0 .. p5}, Lmiui/provider/MiCloudSmsCmd;->transferToFindDevice(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 62
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getAllUser()Landroid/os/UserHandle;
    .locals 3

    .line 257
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    .line 258
    .local v0, "c":Ljava/lang/Class;
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 261
    .end local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "will not reach here"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 259
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "will not reach here"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isStrHex(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .line 280
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 282
    .local v1, "ch":C
    sget-object v2, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lmiui/provider/MiCloudSmsCmd;->sHexChars:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 280
    .end local v1    # "ch":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .restart local v1    # "ch":C
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 286
    .end local v0    # "i":I
    .end local v1    # "ch":C
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static sendOldVersionCommandToFindDeviceService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "digest"    # Ljava/lang/String;
    .param p6, "address"    # Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.device_msgId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "android.intent.extra.device_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "android.intent.extra.device_digest"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "android.intent.extra.device_cmd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "android.intent.extra.lock_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "android.intent.extra.from_address"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "action":Ljava/lang/String;
    const-string v2, "l"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const-string v1, "miui.intent.action.REQUEST_LOCATION"

    goto :goto_0

    .line 160
    :cond_0
    const-string v2, "n"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v1, "miui.intent.action.NOISE"

    goto :goto_0

    .line 162
    :cond_1
    const-string v2, "k"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    const-string v1, "miui.intent.action.LOCK_DEVICE"

    goto :goto_0

    .line 164
    :cond_2
    const-string v2, "w"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    const-string v1, "miui.intent.action.WIPE_DATA"

    goto :goto_0

    .line 166
    :cond_3
    const-string v2, "d"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    const-string v1, "miui.intent.action.DISCARD_FIND_DEVICE_TOKEN"

    .line 170
    :cond_4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "com.xiaomi.finddevice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_5

    .line 176
    const-string v2, "com.miui.cloudservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    :cond_5
    return-void
.end method

.method private static transferToFindDevice(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 17
    .param p0, "oriIntent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "slotId"    # I
    .param p5, "subId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 81
    const-string v3, "power"

    .line 82
    move-object/from16 v12, p1

    invoke-virtual {v12, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 84
    .local v3, "pm":Landroid/os/PowerManager;
    const-class v4, Lmiui/provider/MiCloudSmsCmd;

    .line 85
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 86
    .local v13, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 88
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lmiui/content/ExtraIntent;->INTENT_FIND_DEVICE_V2_CMD_RECEIVER:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v14, v4

    .line 89
    .local v14, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.finddevice.command_type"

    const-string v5, "sms"

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v4, "android.intent.extra.from_address"

    invoke-virtual {v14, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v4, "android.intent.extra.from_slotId"

    move/from16 v15, p4

    invoke-virtual {v14, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v4, "android.intent.extra.from_subId"

    move/from16 v11, p5

    invoke-virtual {v14, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v4, "android.intent.extra.finddevice.command"

    invoke-virtual {v14, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    const-string v4, "android.intent.extra.finddevice.intercept_sms_intent"

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    :cond_0
    const-string v6, "miui.cloud.finddevice.RECEIVE_COMMAND"

    new-instance v7, Lmiui/provider/MiCloudSmsCmd$1;

    invoke-direct {v7, v1, v2, v13}, Lmiui/provider/MiCloudSmsCmd$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method private static transferToOldVersionFindDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .line 124
    move-object/from16 v0, p2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "params":[Ljava/lang/String;
    if-eqz v1, :cond_2

    const/4 v2, 0x5

    array-length v3, v1

    if-lt v3, v2, :cond_2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const-string v5, "mfc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 131
    .local v4, "cmd":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v12, v1, v5

    .line 132
    .local v12, "msgId":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v13, v1, v5

    .line 134
    .local v13, "time":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "pwd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 135
    .local v6, "digest":Ljava/lang/String;
    const-string v7, "k"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_1

    .line 136
    aget-object v5, v1, v8

    .line 137
    aget-object v2, v1, v2

    .line 141
    .end local v5    # "pwd":Ljava/lang/String;
    .end local v6    # "digest":Ljava/lang/String;
    .local v2, "digest":Ljava/lang/String;
    .local v14, "pwd":Ljava/lang/String;
    :goto_0
    move-object v14, v5

    goto :goto_1

    .line 139
    .end local v2    # "digest":Ljava/lang/String;
    .end local v14    # "pwd":Ljava/lang/String;
    .restart local v5    # "pwd":Ljava/lang/String;
    .restart local v6    # "digest":Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v8

    goto :goto_0

    .line 141
    .end local v5    # "pwd":Ljava/lang/String;
    .end local v6    # "digest":Ljava/lang/String;
    .restart local v2    # "digest":Ljava/lang/String;
    .restart local v14    # "pwd":Ljava/lang/String;
    :goto_1
    const-string v5, "##"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 142
    .local v15, "index":I
    invoke-virtual {v2, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 144
    move-object/from16 v5, p0

    move-object v6, v12

    move-object v7, v13

    move-object v8, v4

    move-object v9, v14

    move-object v10, v2

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lmiui/provider/MiCloudSmsCmd;->sendOldVersionCommandToFindDeviceService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 126
    .end local v2    # "digest":Ljava/lang/String;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v12    # "msgId":Ljava/lang/String;
    .end local v13    # "time":Ljava/lang/String;
    .end local v14    # "pwd":Ljava/lang/String;
    .end local v15    # "index":I
    :cond_2
    :goto_2
    const-string v2, "MiCloudSmsCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad find device command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method
