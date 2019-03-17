.class public interface abstract Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getRouter()Lcom/alibaba/wireless/security/framework/IRouterComponent;
.end method

.method public abstract getSGPluginInfo()Lcom/alibaba/wireless/security/framework/ISGPluginInfo;
.end method

.method public varargs abstract onPluginLoaded(Landroid/content/Context;Lcom/alibaba/wireless/security/framework/IRouterComponent;Lcom/alibaba/wireless/security/framework/ISGPluginInfo;Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/IRouterComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method
