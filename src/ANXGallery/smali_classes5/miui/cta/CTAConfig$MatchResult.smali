.class public Lmiui/cta/CTAConfig$MatchResult;
.super Ljava/lang/Object;
.source "CTAConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTAConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchResult"
.end annotation


# instance fields
.field messageId:I

.field optional:Z

.field permission:I


# direct methods
.method constructor <init>(Lmiui/cta/CTAConfig$ActivitiesNode;)V
    .locals 1
    .param p1, "node"    # Lmiui/cta/CTAConfig$ActivitiesNode;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iget-boolean v0, p1, Lmiui/cta/CTAConfig$ActivitiesNode;->optional:Z

    iput-boolean v0, p0, Lmiui/cta/CTAConfig$MatchResult;->optional:Z

    .line 159
    iget v0, p1, Lmiui/cta/CTAConfig$ActivitiesNode;->messageId:I

    iput v0, p0, Lmiui/cta/CTAConfig$MatchResult;->messageId:I

    .line 160
    iget v0, p1, Lmiui/cta/CTAConfig$ActivitiesNode;->permission:I

    iput v0, p0, Lmiui/cta/CTAConfig$MatchResult;->permission:I

    .line 161
    return-void
.end method
