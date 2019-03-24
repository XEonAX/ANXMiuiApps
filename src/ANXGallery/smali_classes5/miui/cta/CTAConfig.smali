.class public Lmiui/cta/CTAConfig;
.super Ljava/lang/Object;
.source "CTAConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cta/CTAConfig$ActivitiesNode;,
        Lmiui/cta/CTAConfig$ActivityNode;,
        Lmiui/cta/CTAConfig$MatchResult;
    }
.end annotation


# static fields
.field private static final ABBREVIATE_PREFIX:Ljava/lang/String; = "."

.field public static final EMPTY:Lmiui/cta/CTAConfig;

.field private static final TAG:Ljava/lang/String; = "CTAConfig"

.field private static final TAG_ACTIVITIES:Ljava/lang/String; = "activities"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"


# instance fields
.field private mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

.field private mActivityNodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/cta/CTAConfig$ActivityNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lmiui/cta/CTAConfig;

    invoke-direct {v0}, Lmiui/cta/CTAConfig;-><init>()V

    sput-object v0, Lmiui/cta/CTAConfig;->EMPTY:Lmiui/cta/CTAConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lmiui/cta/CTAConfig$ActivitiesNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/cta/CTAConfig$ActivitiesNode;-><init>(Lmiui/cta/CTAConfig$1;)V

    iput-object v0, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 53
    invoke-direct {p0}, Lmiui/cta/CTAConfig;-><init>()V

    .line 54
    invoke-direct {p0, p1, p2}, Lmiui/cta/CTAConfig;->parseConfig(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 55
    return-void
.end method

.method private parseActivities(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    sget-object v0, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    .line 89
    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_optional:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->optional:Z

    .line 90
    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_message:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->messageId:I

    .line 91
    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_permission:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->permission:I

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method

.method private parseActivity(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    new-instance v0, Lmiui/cta/CTAConfig$ActivityNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/cta/CTAConfig$ActivityNode;-><init>(Lmiui/cta/CTAConfig$1;)V

    .line 97
    .local v0, "node":Lmiui/cta/CTAConfig$ActivityNode;
    sget-object v1, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    .line 99
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    .line 104
    :goto_0
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 105
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_optional:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->optional:Z

    goto :goto_1

    .line 107
    :cond_1
    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->optional:Z

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->optional:Z

    .line 109
    :goto_1
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_message:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->messageId:I

    .line 110
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_permission:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->permission:I

    .line 111
    iget v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->messageId:I

    if-nez v2, :cond_2

    iget v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->permission:I

    if-nez v2, :cond_2

    .line 112
    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->messageId:I

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->messageId:I

    .line 113
    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->permission:I

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->permission:I

    .line 115
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    iget-object v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    .line 118
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_3
    iget-object v3, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method private parseConfig(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 58
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 60
    .local v0, "attrs":Landroid/util/AttributeSet;
    const/4 v1, 0x0

    .line 61
    .local v1, "activityParsing":Z
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .line 62
    .local v2, "event":I
    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 63
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 64
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "name":Ljava/lang/String;
    const-string v4, "activities"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-direct {p0, p1, v0}, Lmiui/cta/CTAConfig;->parseActivities(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v1, 0x1

    goto :goto_1

    .line 68
    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "activity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-direct {p0, p1, v0}, Lmiui/cta/CTAConfig;->parseActivity(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 72
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 73
    .restart local v3    # "name":Ljava/lang/String;
    const-string v4, "activities"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    const/4 v1, 0x0

    .line 77
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    .line 81
    .end local v1    # "activityParsing":Z
    .end local v2    # "event":I
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "CTAConfig"

    const-string v3, "Fail to parse CTA config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 79
    :catch_1
    move-exception v1

    .line 80
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "CTAConfig"

    const-string v3, "Fail to parse CTA config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    nop

    .line 84
    :goto_3
    return-void
.end method


# virtual methods
.method public canMatch()Z
    .locals 5

    .line 125
    iget-object v0, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v0, v0, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 126
    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 130
    .local v0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lmiui/cta/CTAConfig$ActivityNode;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/cta/CTAConfig$ActivityNode;

    .line 131
    .local v3, "activityNode":Lmiui/cta/CTAConfig$ActivityNode;
    iget-boolean v4, v3, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    return v1

    .line 134
    .end local v3    # "activityNode":Lmiui/cta/CTAConfig$ActivityNode;
    :cond_1
    goto :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public match(Ljava/lang/Class;)Lmiui/cta/CTAConfig$MatchResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lmiui/cta/CTAConfig$MatchResult;"
        }
    .end annotation

    .line 139
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cta/CTAConfig$ActivityNode;

    .line 141
    .local v1, "node":Lmiui/cta/CTAConfig$ActivityNode;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 142
    iget-boolean v3, v1, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    if-eqz v3, :cond_0

    .line 143
    new-instance v2, Lmiui/cta/CTAConfig$MatchResult;

    invoke-direct {v2, v1}, Lmiui/cta/CTAConfig$MatchResult;-><init>(Lmiui/cta/CTAConfig$ActivitiesNode;)V

    return-object v2

    .line 145
    :cond_0
    return-object v2

    .line 149
    :cond_1
    iget-object v3, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v3, v3, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    if-eqz v3, :cond_2

    .line 150
    new-instance v2, Lmiui/cta/CTAConfig$MatchResult;

    iget-object v3, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    invoke-direct {v2, v3}, Lmiui/cta/CTAConfig$MatchResult;-><init>(Lmiui/cta/CTAConfig$ActivitiesNode;)V

    return-object v2

    .line 153
    :cond_2
    return-object v2
.end method
