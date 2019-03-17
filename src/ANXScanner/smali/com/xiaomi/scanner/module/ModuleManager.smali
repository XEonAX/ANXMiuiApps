.class public interface abstract Lcom/xiaomi/scanner/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;,
        Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    }
.end annotation


# static fields
.field public static final MODULE_INDEX_NONE:I = -0x1


# virtual methods
.method public abstract getModule(ILcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;
.end method

.method public abstract getModuleAgent(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
.end method

.method public abstract registerModule(Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;)V
.end method

.method public abstract unregisterModule(I)Z
.end method
