.class public Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
.super Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
.source "ThemeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/content/res/ThemeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewDefaultValue"
.end annotation


# instance fields
.field public mResName:Ljava/lang/String;

.field public mResPkgName:Ljava/lang/String;

.field public mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public mResValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;-><init>()V

    .line 131
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iput-object v0, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 136
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    iput-object v0, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    .line 137
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResName:Ljava/lang/String;

    .line 148
    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResValue:Ljava/lang/String;

    .line 149
    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
