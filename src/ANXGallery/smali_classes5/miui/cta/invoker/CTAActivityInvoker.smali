.class public Lmiui/cta/invoker/CTAActivityInvoker;
.super Ljava/lang/Object;
.source "CTAActivityInvoker.java"

# interfaces
.implements Lmiui/extension/invoker/Invoker;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityInvoker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 19
    const-string v0, "onCreate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lmiui/cta/CTAManager;->showAgreementIfNeed(Landroid/app/Activity;)V

    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "ActivityInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void
.end method
