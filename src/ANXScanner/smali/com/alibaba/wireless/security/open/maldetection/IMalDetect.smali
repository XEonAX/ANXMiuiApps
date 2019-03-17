.class public interface abstract Lcom/alibaba/wireless/security/open/maldetection/IMalDetect;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "securitybody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;
    }
.end annotation


# virtual methods
.method public abstract registerCallBack(Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;)V
.end method

.method public abstract unregisterCallBack(Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;)V
.end method
