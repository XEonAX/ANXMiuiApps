.class Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;
    }
.end annotation


# static fields
.field private static final EVENT_QUERY_OPERATOR:I = 0x14

.field private static final EVENT_QUERY_TELOCATION:I = 0xa

.field private static final EVENT_QUERY_TELOCATION_AND_OPERATOR:I = 0x1e


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1047
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1048
    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/PhoneNumberUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/PhoneNumberUtils$1;

    .line 959
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .locals 1

    .line 982
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;->access$100()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    return-object v0
.end method

.method public static queryOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 998
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 994
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    .param p2, "arg1"    # I
    .param p3, "token"    # I
    .param p4, "cookie1"    # Ljava/lang/Object;
    .param p5, "cookie2"    # Ljava/lang/Object;
    .param p6, "cookie3"    # Ljava/lang/Object;
    .param p7, "cookie4"    # Ljava/lang/Object;
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "phoneNumber"    # Ljava/lang/String;

    .line 1120
    iput-object p0, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->handler:Landroid/os/Handler;

    .line 1121
    iput-object p8, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    .line 1122
    iput-object p9, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    .line 1123
    iput-object p4, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    .line 1124
    iput-object p5, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    .line 1125
    iput-object p6, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 1126
    iput-object p7, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    .line 1127
    const/4 v0, 0x0

    iput-object v0, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 1129
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1130
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1131
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1132
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1052
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;-><init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 1055
    :cond_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    .line 1138
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    if-eqz v1, :cond_0

    .line 1139
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    if-eqz v1, :cond_1

    .line 1142
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operator:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1144
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    if-eqz v1, :cond_2

    .line 1145
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    iget-object v8, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operator:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_2
    :goto_0
    return-void
.end method

.method public startQueryOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .line 1093
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1094
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v11, p6

    iput-object v11, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    .line 1095
    const/16 v3, 0x14

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public startQueryTelocationAndOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .line 1113
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1114
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v11, p6

    iput-object v11, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    .line 1115
    const/16 v3, 0x1e

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .line 1073
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1074
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v11, p6

    iput-object v11, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    .line 1075
    const/16 v3, 0xa

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1076
    return-void
.end method
