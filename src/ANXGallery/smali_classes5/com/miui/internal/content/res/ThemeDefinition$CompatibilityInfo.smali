.class public Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
.super Ljava/lang/Object;
.source "ThemeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/content/res/ThemeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompatibilityInfo"
.end annotation


# instance fields
.field public mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    iput-object v0, p0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method
