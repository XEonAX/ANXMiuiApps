.class Lmiui/cta/CTAConfig$ActivitiesNode;
.super Ljava/lang/Object;
.source "CTAConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTAConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivitiesNode"
.end annotation


# instance fields
.field enabled:Z

.field messageId:I

.field optional:Z

.field permission:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/cta/CTAConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/cta/CTAConfig$1;

    .line 172
    invoke-direct {p0}, Lmiui/cta/CTAConfig$ActivitiesNode;-><init>()V

    return-void
.end method
