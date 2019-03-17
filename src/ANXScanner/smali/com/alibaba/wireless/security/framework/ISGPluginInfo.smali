.class public interface abstract Lcom/alibaba/wireless/security/framework/ISGPluginInfo;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAssetManager()Landroid/content/res/AssetManager;
.end method

.method public abstract getClassLoader()Ldalvik/system/DexClassLoader;
.end method

.method public abstract getPackageInfo()Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPluginName()Ljava/lang/String;
.end method

.method public abstract getPluginPath()Ljava/lang/String;
.end method

.method public abstract getSGPluginEntry()Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;
.end method

.method public abstract getSGPluginManager()Lcom/alibaba/wireless/security/framework/ISGPluginManager;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method
