.class public Lcom/xiaomi/analytics/EventAction;
.super Lcom/xiaomi/analytics/Action;
.source "EventAction.java"


# static fields
.field protected static final EVENT_DEFAULT_PARAM:Ljava/lang/String; = "_event_default_param_"


# instance fields
.field private mEventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/analytics/EventAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/analytics/Action;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "EventAction"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventName is null when constructing EventAction!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/analytics/EventAction;->mEventName:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/xiaomi/analytics/EventAction;->mEventName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/EventAction;->addEventId(Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 26
    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    const-string v0, "_event_default_param_"

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/analytics/EventAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 29
    :cond_1
    return-void
.end method
