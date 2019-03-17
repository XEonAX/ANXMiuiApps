.class public Lmiui/cloud/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# static fields
.field public static final CLOUD_SDK_LEVEL:Lcom/miui/app/ModuleLevel;

.field public static final MIUI_ROM_LEVEL:Lcom/miui/app/ModuleLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/miui/app/ModuleLevel;

    const-string v1, "com.xiaomi.micloud.sdk"

    invoke-direct {v0, v1}, Lcom/miui/app/ModuleLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/cloud/AppConstants;->CLOUD_SDK_LEVEL:Lcom/miui/app/ModuleLevel;

    .line 7
    new-instance v0, Lcom/miui/app/ModuleLevel;

    const-string v1, "com.miui.rom"

    invoke-direct {v0, v1}, Lcom/miui/app/ModuleLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/cloud/AppConstants;->MIUI_ROM_LEVEL:Lcom/miui/app/ModuleLevel;

    return-void
.end method
