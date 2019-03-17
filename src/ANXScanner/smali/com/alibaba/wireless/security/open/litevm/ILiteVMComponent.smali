.class public interface abstract Lcom/alibaba/wireless/security/open/litevm/ILiteVMComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "main"
.end annotation


# virtual methods
.method public abstract callLiteVMByteMethod(Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;I[Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract callLiteVMLongMethod(Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;I[Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract callLiteVMStringMethod(Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;I[Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract callLiteVMVoidMethod(Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;I[Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract createLiteVMInstance(Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/Object;)Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract destroyLiteVMInstance(Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract reloadLiteVMInstance(Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method
