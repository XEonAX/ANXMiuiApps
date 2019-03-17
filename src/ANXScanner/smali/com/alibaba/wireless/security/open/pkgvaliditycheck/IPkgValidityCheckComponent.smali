.class public interface abstract Lcom/alibaba/wireless/security/open/pkgvaliditycheck/IPkgValidityCheckComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "misc"
.end annotation


# virtual methods
.method public varargs abstract checkEnvAndFiles([Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method
