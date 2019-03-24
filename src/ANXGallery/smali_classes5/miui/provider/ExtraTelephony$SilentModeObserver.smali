.class Lmiui/provider/ExtraTelephony$SilentModeObserver;
.super Landroid/database/ContentObserver;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1932
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1933
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lmiui/provider/ExtraTelephony$SilentModeObserver;->mContext:Landroid/content/Context;

    .line 1935
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 1939
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1940
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$000()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1942
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmiui/provider/ExtraTelephony$QuietModeEnableListener;>;"
    iget-object v1, p0, Lmiui/provider/ExtraTelephony$SilentModeObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v1

    .line 1943
    .local v1, "isSilenceModeEnable":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1944
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-interface {v2, v1}, Lmiui/provider/ExtraTelephony$QuietModeEnableListener;->onQuietModeEnableChange(Z)V

    goto :goto_0

    .line 1947
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmiui/provider/ExtraTelephony$QuietModeEnableListener;>;"
    .end local v1    # "isSilenceModeEnable":Z
    :cond_0
    return-void
.end method
