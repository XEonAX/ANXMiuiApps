.class public Lcom/miui/internal/vip/utils/VipDataPref;
.super Ljava/lang/Object;
.source "VipDataPref.java"


# static fields
.field private static final UpdatePostFix:Ljava/lang/String; = "_update"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private volatile mPref:Landroid/content/SharedPreferences;

.field private mPrefName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mName:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mCtx:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private getAccount()Landroid/accounts/Account;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    :cond_0
    return-void
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "pref":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 80
    :cond_0
    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1

    .line 65
    :cond_0
    return-wide v1
.end method

.method public getPref()Landroid/content/SharedPreferences;
    .locals 5

    .line 24
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 25
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/internal/vip/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "name":Ljava/lang/String;
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPrefName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    iput-object v1, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPrefName:Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPrefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPref:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPref:Landroid/content/SharedPreferences;

    return-object v2

    .line 32
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 35
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 41
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 43
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    :cond_0
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPrefName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPref:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/internal/vip/utils/VipDataPref;
    throw v0
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # I

    .line 84
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    :cond_0
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # J

    .line 69
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    :cond_0
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    :cond_0
    return-void
.end method
