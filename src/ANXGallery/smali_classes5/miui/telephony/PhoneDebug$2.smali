.class Lmiui/telephony/PhoneDebug$2;
.super Landroid/database/ContentObserver;
.source "PhoneDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/PhoneDebug;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .line 86
    iput-object p2, p0, Lmiui/telephony/PhoneDebug$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 89
    iget-object v0, p0, Lmiui/telephony/PhoneDebug$2;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "phone_debug_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "debug.miui.phone"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    .line 90
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PhoneDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange VDBG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lmiui/telephony/PhoneDebug;->VDBG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$100()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/PhoneDebug$Listener;

    .line 93
    .local v1, "l":Lmiui/telephony/PhoneDebug$Listener;
    invoke-interface {v1}, Lmiui/telephony/PhoneDebug$Listener;->onDebugChanged()V

    .line 94
    .end local v1    # "l":Lmiui/telephony/PhoneDebug$Listener;
    goto :goto_1

    .line 96
    :cond_3
    return-void
.end method
