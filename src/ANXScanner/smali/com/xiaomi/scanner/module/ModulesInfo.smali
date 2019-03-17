.class public Lcom/xiaomi/scanner/module/ModulesInfo;
.super Ljava/lang/Object;
.source "ModulesInfo.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ModulesInfo"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/ModulesInfo;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAmazonAssistant(Landroid/content/Context;Lcom/xiaomi/scanner/module/ModuleManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleManager"    # Lcom/xiaomi/scanner/module/ModuleManager;

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->setAAFeatureShown(Z)V

    .line 130
    sget-object v0, Lcom/xiaomi/scanner/module/ModulesInfo;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "amazon shopping apps installed in the device already. Showing Shopping menu option under Scanner."

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0200b8

    const v3, 0x7f07007a

    const-string v4, "module_amazon_shopping"

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e000d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0015

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 131
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 138
    return-void
.end method

.method private static registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V
    .locals 7
    .param p0, "moduleManager"    # Lcom/xiaomi/scanner/module/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "iconResId"    # I
    .param p3, "titleResId"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "sortId"    # I
    .param p6, "weight"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/xiaomi/scanner/module/ModulesInfo$1;

    move v1, p6

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo$1;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/xiaomi/scanner/module/ModuleManager;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;)V

    .line 204
    return-void
.end method

.method public static setupModules(Landroid/content/Context;Lcom/xiaomi/scanner/module/ModuleManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleManager"    # Lcom/xiaomi/scanner/module/ModuleManager;

    .prologue
    .line 21
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isCodeModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0200b5

    const v3, 0x7f070077

    const-string v4, "module_code"

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e000f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0017

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 22
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isShoppingModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0200b8

    const v3, 0x7f07007a

    const-string v4, "module_shopping"

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0012

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e001a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 41
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isTranslationModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0200bc

    const v3, 0x7f07007c

    const-string v4, "module_translation"

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0014

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e001c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 42
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 51
    :cond_2
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isBusinessCardModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f020086

    const v3, 0x7f070076

    const-string v4, "module_business_card"

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e000e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0016

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 52
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 61
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/scanner/module/ModulesInfo;->shouldShowAAShoppingMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    invoke-static {p0, p1}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerAmazonAssistant(Landroid/content/Context;Lcom/xiaomi/scanner/module/ModuleManager;)V

    .line 65
    :cond_4
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isDocumentModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f02008b

    const v3, 0x7f070078

    const-string v4, "module_document"

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0010

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0018

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 66
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 75
    :cond_5
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isBusinessCardModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0200ab

    const v3, 0x7f070079

    const-string v4, "module_plant"

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0011

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0019

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 76
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 85
    :cond_6
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isStudyModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0200bb

    const v3, 0x7f07007b

    const-string v4, "module_study"

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0013

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e001b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v0, p1

    .line 86
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V

    .line 95
    :cond_7
    return-void
.end method

.method private static shouldShowAAShoppingMenu(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "launch_count_amazon_assistant"

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 102
    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "launchCount":I
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "launch_count_amazon_assistant"

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    invoke-static {p0}, Lcom/xiaomi/scanner/settings/FeatureManager;->isAmazonShoppingModuleAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isEURegion()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isAmazonAssistantEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isPreLoadRegionAA()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 118
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 123
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isAmazonAssistantEnabled()Z

    move-result v1

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isAmazonAssistantEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isPreLoadRegionAA()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
