.class public interface abstract Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModuleAgent"
.end annotation


# virtual methods
.method public abstract createModule(Landroid/content/Context;Lcom/xiaomi/scanner/app/AppController;)Lcom/xiaomi/scanner/module/ModuleController;
.end method

.method public abstract createModuleBaseInfo()Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
.end method
