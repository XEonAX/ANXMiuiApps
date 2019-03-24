.class Lmiui/cta/CTAConfig$ActivityNode;
.super Lmiui/cta/CTAConfig$ActivitiesNode;
.source "CTAConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTAConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityNode"
.end annotation


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/cta/CTAConfig$ActivitiesNode;-><init>(Lmiui/cta/CTAConfig$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/cta/CTAConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/cta/CTAConfig$1;

    .line 168
    invoke-direct {p0}, Lmiui/cta/CTAConfig$ActivityNode;-><init>()V

    return-void
.end method
