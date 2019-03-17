.class public Lcom/miui/gallery/data/ExternalSettingSecretService;
.super Landroid/app/Service;
.source "ExternalSettingSecretService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;,
        Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    new-instance v0, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;-><init>(Lcom/miui/gallery/data/ExternalSettingSecretService;Lcom/miui/gallery/data/ExternalSettingSecretService$1;)V

    return-object v0
.end method
