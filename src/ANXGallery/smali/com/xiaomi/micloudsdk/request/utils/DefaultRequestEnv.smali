.class public Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;
.super Ljava/lang/Object;
.source "DefaultRequestEnv.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;


# static fields
.field private static final RETRY_INTERVALS:[I


# instance fields
.field private mExtendedAuthToken:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->RETRY_INTERVALS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mExtendedAuthToken:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 95
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 96
    const-string v1, "DefaultRequestEnv"

    const-string v2, "no account in system"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getUserAgent()Ljava/lang/String;
    .locals 7

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mUserAgent:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v4, "sb":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v5, "; MIUI/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    const-string v5, "miui.os.Build"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 131
    .local v3, "isAlphaField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 132
    .local v2, "isAlphaBuild":Z
    if-eqz v2, :cond_0

    .line 133
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    const-string v5, "ALPHA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v0    # "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "isAlphaBuild":Z
    .end local v3    # "isAlphaField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mUserAgent:Ljava/lang/String;

    .line 147
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mUserAgent:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    .line 136
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string v5, "DefaultRequestEnv"

    const-string v6, "Not in MIUI in getUserAgent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 138
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :try_start_4
    const-string v5, "DefaultRequestEnv"

    const-string v6, "Not in MIUI in getUserAgent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "DefaultRequestEnv"

    const-string v6, "Not in MIUI in getUserAgent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "DefaultRequestEnv"

    const-string v6, "Not in MIUI in getUserAgent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public invalidateAuthToken()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mExtendedAuthToken:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "DefaultRequestEnv"

    const-string v1, "invalidateAuthToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mExtendedAuthToken:Ljava/lang/ThreadLocal;

    .line 87
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mExtendedAuthToken:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method public queryAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 36
    const/4 v9, 0x0

    .line 38
    .local v9, "isInvalidateAuthToken":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_3

    .line 40
    :try_start_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 41
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 42
    const-string v0, "DefaultRequestEnv"

    const-string v2, "no account in system"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 78
    .end local v1    # "account":Landroid/accounts/Account;
    :goto_1
    return-object v0

    .line 46
    .restart local v1    # "account":Landroid/accounts/Account;
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "micloud"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "authtoken"

    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "token":Ljava/lang/String;
    if-nez v10, :cond_1

    move-object v0, v11

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mExtendedAuthToken:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->mExtendedAuthToken:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 56
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v10    # "token":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 57
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "DefaultRequestEnv"

    const-string v2, "IOException when getting service token"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v0, 0x2

    if-ge v8, v0, :cond_2

    .line 60
    :try_start_1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->RETRY_INTERVALS:[I

    aget v0, v0, v8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 61
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 62
    .local v7, "e1":Ljava/lang/InterruptedException;
    const-string v0, "DefaultRequestEnv"

    const-string v2, "InterruptedException when sleep"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 65
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v6

    .line 66
    .local v6, "e":Landroid/accounts/OperationCanceledException;
    const-string v0, "DefaultRequestEnv"

    const-string v2, "OperationCanceledException when getting service token"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v11

    .line 67
    goto :goto_1

    .line 68
    .end local v6    # "e":Landroid/accounts/OperationCanceledException;
    :catch_3
    move-exception v6

    .line 69
    .local v6, "e":Landroid/accounts/AuthenticatorException;
    const-string v0, "DefaultRequestEnv"

    const-string v2, "AuthenticatorException when getting service token"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    if-nez v9, :cond_3

    .line 71
    const/4 v9, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->invalidateAuthToken()V

    goto :goto_2

    .end local v6    # "e":Landroid/accounts/AuthenticatorException;
    :cond_3
    move-object v0, v11

    .line 78
    goto :goto_1
.end method

.method public queryEncryptedAccountName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 106
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 107
    const-string v2, "DefaultRequestEnv"

    const-string v3, "no account in system"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    .line 117
    :goto_0
    return-object v2

    .line 110
    :cond_0
    new-instance v1, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;

    .line 111
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;-><init>(Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;Landroid/content/Context;Landroid/accounts/Account;)V

    .line 117
    .local v1, "invoker":Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;, "Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method
