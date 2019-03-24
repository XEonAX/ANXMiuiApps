.class public abstract Lmiui/yellowpage/InvocationHandler;
.super Ljava/lang/Object;
.source "InvocationHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract;->INVOACTION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 27
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 28
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
